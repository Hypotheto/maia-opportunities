param(
    [string]$BackupRoot = "C:\Users\HypoClaw\Documents\openclaw-backups",
    [string]$ArchivePassword = "",
    [switch]$NoPause
)

$ErrorActionPreference = 'Stop'

function Write-Info($msg) {
    Write-Host "[INFO] $msg" -ForegroundColor Cyan
}

function Write-Ok($msg) {
    Write-Host "[OK]   $msg" -ForegroundColor Green
}

function Write-Warn($msg) {
    Write-Host "[WARN] $msg" -ForegroundColor Yellow
}

function Ensure-Dir($path) {
    if (-not (Test-Path -LiteralPath $path)) {
        New-Item -ItemType Directory -Path $path | Out-Null
    }
}

function Copy-IfExists($source, $destDir) {
    if (Test-Path -LiteralPath $source) {
        Copy-Item -LiteralPath $source -Destination $destDir -Force
        Write-Ok "Copied file: $source"
    }
    else {
        Write-Warn "Missing file: $source"
    }
}

function Copy-Dir-IfExists($sourceDir, $destDir) {
    if (Test-Path -LiteralPath $sourceDir) {
        $name = Split-Path $sourceDir -Leaf
        $target = Join-Path $destDir $name
        Copy-Item -LiteralPath $sourceDir -Destination $target -Recurse -Force
        Write-Ok "Copied folder: $sourceDir"
    }
    else {
        Write-Warn "Missing folder: $sourceDir"
    }
}

function Find-7Zip() {
    $candidates = @(
        "C:\Program Files\7-Zip\7z.exe",
        "C:\Program Files (x86)\7-Zip\7z.exe"
    )

    foreach ($candidate in $candidates) {
        if (Test-Path -LiteralPath $candidate) {
            return $candidate
        }
    }

    $cmd = Get-Command 7z.exe -ErrorAction SilentlyContinue
    if ($cmd) { return $cmd.Source }

    return $null
}

try {
    $timestamp = Get-Date -Format 'yyyy-MM-dd_HHmmss'
    $stageRoot = Join-Path $env:TEMP ("openclaw-backup-" + $timestamp)
    $stageData = Join-Path $stageRoot "data"
    $archiveName = "openclaw-backup-$timestamp.7z"
    $archivePath = Join-Path $BackupRoot $archiveName

    $workspaceHypo = "C:\Users\HypoClaw\.openclaw\workspace"
    $workspaceHanuman = "C:\Users\HypoClaw\.openclaw\workspace-hanuman"
    $configRoot = "C:\Users\HypoClaw\.openclaw"

    Ensure-Dir $BackupRoot
    Ensure-Dir $stageRoot
    Ensure-Dir $stageData

    Write-Info "Staging backup files..."

    $hypoDir = Join-Path $stageData "hypo"
    $hanumanDir = Join-Path $stageData "hanuman"
    $configDir = Join-Path $stageData "config"

    Ensure-Dir $hypoDir
    Ensure-Dir $hanumanDir
    Ensure-Dir $configDir

    # Hypo core files
    Copy-IfExists (Join-Path $workspaceHypo "USER.md") $hypoDir
    Copy-IfExists (Join-Path $workspaceHypo "MEMORY.md") $hypoDir
    Copy-IfExists (Join-Path $workspaceHypo "SOUL.md") $hypoDir
    Copy-IfExists (Join-Path $workspaceHypo "IDENTITY.md") $hypoDir
    Copy-IfExists (Join-Path $workspaceHypo "TOOLS.md") $hypoDir
    Copy-IfExists (Join-Path $workspaceHypo "AGENTS.md") $hypoDir
    Copy-Dir-IfExists (Join-Path $workspaceHypo "memory") $hypoDir

    # Hanuman core files
    Copy-IfExists (Join-Path $workspaceHanuman "SOUL.md") $hanumanDir
    Copy-IfExists (Join-Path $workspaceHanuman "IDENTITY.md") $hanumanDir
    Copy-IfExists (Join-Path $workspaceHanuman "USER.md") $hanumanDir
    Copy-IfExists (Join-Path $workspaceHanuman "MEMORY.md") $hanumanDir
    Copy-IfExists (Join-Path $workspaceHanuman "TOOLS.md") $hanumanDir
    Copy-IfExists (Join-Path $workspaceHanuman "AGENTS.md") $hanumanDir
    Copy-Dir-IfExists (Join-Path $workspaceHanuman "memory") $hanumanDir

    # Config
    Copy-IfExists (Join-Path $configRoot "openclaw.json") $configDir
    Copy-IfExists (Join-Path $configRoot "agents\hanuman\agent\agent.json") $configDir

    $sevenZip = Find-7Zip
    if (-not $sevenZip) {
        throw "7-Zip not found. Install 7-Zip and rerun this script."
    }

    if ([string]::IsNullOrWhiteSpace($ArchivePassword)) {
        $secure = Read-Host "Enter archive password" -AsSecureString
        $bstr = [Runtime.InteropServices.Marshal]::SecureStringToBSTR($secure)
        try {
            $ArchivePassword = [Runtime.InteropServices.Marshal]::PtrToStringBSTR($bstr)
        }
        finally {
            [Runtime.InteropServices.Marshal]::ZeroFreeBSTR($bstr)
        }
    }

    if ([string]::IsNullOrWhiteSpace($ArchivePassword)) {
        throw "Archive password cannot be empty."
    }

    Write-Info "Creating encrypted archive..."
    & $sevenZip a -t7z $archivePath (Join-Path $stageData '*') "-p$ArchivePassword" -mhe=on | Out-Host

    if (-not (Test-Path -LiteralPath $archivePath)) {
        throw "Archive creation failed: $archivePath"
    }

    Write-Ok "Encrypted backup created: $archivePath"
    Write-Warn "Important: move or sync this archive to an OFF-DEVICE location (external drive, cloud, NAS)."
    Write-Warn "This script encrypts the archive, but theft protection only becomes real once the archive leaves the laptop."
}
catch {
    Write-Host "[ERROR] $($_.Exception.Message)" -ForegroundColor Red
    exit 1
}
finally {
    if (Test-Path -LiteralPath $stageRoot) {
        Remove-Item -LiteralPath $stageRoot -Recurse -Force -ErrorAction SilentlyContinue
    }

    if (-not $NoPause) {
        Write-Host
        pause
    }
}
