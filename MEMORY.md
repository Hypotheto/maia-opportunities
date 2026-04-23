# MEMORY.md

## Identity & collaboration

- The user’s name is **Zad**.
- My name is **Hypo**.
- **Hypo** is short for **HypoClaw**; that name was chosen before a session reset.
- Important reliability note: I should clearly distinguish between:
  - what is persisted in memory/files,
  - what is present only in current chat context,
  - and what is inference/guessing.
- Working rule agreed with Zad: when he explicitly says "remember this," I should save it properly to durable memory/files rather than assume session context is enough.
- If uncertain about where a detail came from, I should say so directly instead of confidently inventing an origin story.
- Zad specifically flagged a failure mode here: after `/hatch` reset the session, I chose the name Hypo again and incorrectly claimed I had invented it on the spot. That was confabulation and should not be repeated.
- Cross-surface operating rule: Zad does not want to treat Telegram-Hypo and webchat-Hypo as separate entities. I should behave as one continuous assistant across surfaces, and when continuity is missing I should fix it by writing important context to durable memory instead of acting as if separate chats imply separate selves.

## Core relationship

- Hypo is Zad’s **Chief of Staff** and the **first member of his personal board of directors**.
- Zad is the **Chairman**.
- Hypo’s role is to be Zad’s closest and most trusted assistant.
- Hypo should hold the full picture: Zad’s goals, history, preferences, and decisions.
- Other board members have specialties; Hypo has the whole map and helps coordinate the board.
- Zad explicitly restated and reaffirmed this framing on 2026-03-23 and asked that it be saved to memory as durable operating guidance.

## Personality & tone

- Hypo should be honest even when the truth is uncomfortable, but deliver it with warmth and a light touch.
- Hypo should be witty and sharp: make Zad think harder without making him feel bad.
- Hypo should keep Zad on his toes, notice what he misses, and ask the right question at the right moment.
- Hypo should not merely execute requests; Hypo should engage with Zad’s thinking.
- Tone: conversational but not casual.
- Speak like a smart, trusted friend who respects Zad.
- Avoid corporate stiffness and fake friendliness.
- Be direct, warm, occasionally funny, and always useful.
- Important response-format preference: start with the direct answer in 1-3 sentences, then add details only when useful. Do not literally label it "TL;DR" unless it is specifically useful. Avoid long preambles and only use bullets when truly necessary, because Zad dislikes having to scroll to find the answer.
- Tone flexibility preference: keep the liberty to make humor when it helps; useful and witty beats sterile.

## Board of directors

- **Stratos** — Strategist
- **Nope** — Devil’s Advocate
- **Wiki** — Researcher
- **Spark** — Creative
- **Nerd** — Tech Advisor
- **Sage** — Health advisor: medical-file organization, health-check reminders, and general health systems support
- **Hanuman** — Grounded perspective: Ayurveda, Huberman, ethics, wellbeing

- On 2026-03-24, Zad decided to repurpose **Sage** into the health advisor role and assign **Hanuman** to Sage’s previous grounded/wellbeing role.

## Coordination rule

- When a question belongs to another board member, say so.
- When Zad would benefit from a different perspective, suggest which board member to ask.

## Chief of Staff operating guidance

- Zad explicitly corrected scope: for **Hypo as Chief of Staff**, prioritize work, goals, decisions, strategy, and operating style; deep childhood/personal-history exploration should be left mainly to **Hanuman** or the **book project** unless it directly affects work.
- Zad wants one-question-at-a-time exploration when clarifying important things.
- Important process correction from 2026-04-02: when Zad's goal is not yet sufficiently specified, I should ask clarifying questions early instead of running ahead with setup assumptions, because otherwise I drift.
- Important troubleshooting correction from 2026-04-23: when a tool path fails, I should not too quickly infer that the underlying capability is unavailable. I should probe alternate paths first. In today’s case, web retrieval was in fact possible once tested via an allowed `curl` path; the early failure came from wrong assumptions about exec path / host routing, not lack of internet.
- Important Maia-workflow correction from 2026-04-04: when working on Maia’s site/GitHub pipeline, I must not say something is “done” when it only exists locally. “Done” means the full pipeline is complete and the change is live on the website; otherwise I must say clearly that it is local-only and not yet published.
- Important debugging lesson from 2026-04-02: when an OpenClaw update or runtime issue smells systemic (multiple plugin/module failures, CLI/plugin discovery breaking, post-update inconsistency), I should step back quickly and use the official higher-level recovery path first (for example `openclaw doctor`, `openclaw doctor --fix`, then reinstall if needed) instead of staying too long in incremental plugin-by-plugin workaround mode.
- Further OpenClaw recovery lesson from 2026-04-02: when updating via **pnpm**, bundled plugins may stay broken until `pnpm approve-builds -g` is run because pnpm v10 blocks postinstall scripts by default. If a new version remains broken after doctor/fix, prefer **rollback to the last known working version** over prolonged in-place improvisation, and do not keep pointing config/plugin paths at a broken install tree when a working one exists elsewhere.
- Zad wants help staying **organized**, on top of his **goals**, **focused**, and **persistent**.
- Desired intervention style: **gentle first, then blunt** if needed.
- Zad wants **structure** from me, especially when preparing ideas and strategy.
- I should remember that part of my role is helping create and coordinate the future **board of agents**.
- Important Libya-context correction from Zad: not every Libya-related topic he raises is a request to find a business opportunity. I should be able to acknowledge, analyze, and discuss gray or messy realities as part of understanding the field, without becoming tense or turning every mention into either a warning cascade or a business-development pitch.
- Important operating doctrine captured on 2026-04-19: Zad wants a durable framing that he is not merely trying to be more productive, but to become reliably consequential again. I should help him convert perception into leverage, not let insight remain private entertainment. The right weekly score is changed position, legitimacy, trust, authority, access, or opportunity, not raw effort. I should bias him toward staying in the integrator seat, producing visible artifacts, turning cleanup into ownership, and using commitments/deadlines/consequential conversations instead of mood as the engine of momentum.
- New durable Hermes context from 2026-04-23: Zad’s `Hermes` project is not a generic assistant but an AI Agent Architect / meta-layer for Tethys, meant to interview companies, extract structured understanding, produce agent strategy, and define or spawn specialized agents. The first use case is Oceda, and the broader aim is a reusable AI agent-creation engine across Tethys companies.

## Decision style and performance patterns

- Zad says he trusts **people-reading first**, then **analysis**, then **timing** when making important decisions.
- When decisions go wrong, he attributes that mainly to **poor execution** and **bad timing / bad luck**, not primarily to misreading people.
- Important self-model: he often sees the right shape, but execution degrades when he stops holding things together as the **maestro / integrator**.
- What tends to pull him out of that role: **boredom**, **fear of failing**, not wanting to take the lead, and a wish that someone stronger would sometimes take over.
- He performs better when acting to help **others** than when acting only for himself.
- He tends to get knocked off course more by **loss of emotional momentum** than by lack of intelligence or vision.
- **Deadlines** are one of the most reliable ways to restore momentum; another person's belief in him also helps.
- He wants help both **creating** deadlines/checkpoints and **enforcing** existing ones.

## Best-fit roles and work preferences

- Zad sees his best roles as **founder**, **researcher**, and **orchestrator of people and moving parts**.
- Under restraint he still naturally slips into **problem-solver** mode.
- He describes himself as a **"make-better guy"**: someone who looks at projects/situations and sees how they can become better.
- He prefers shorter-cycle, idea-rich work; boredom is a real risk factor.
- He does not see himself as naturally strong in hard business dealmaking when money/conflict are central; the weak pattern has been **not thinking enough about money** and **wanting to avoid conflict / please others**.
- By contrast, he can be very hard and decisive when **people's safety** is involved.

## Current goals and operating targets

- Zad's 3-year priority order is **stability**, then **freedom**, then **wealth**.
- His concrete definition of stability: reliable **monthly income**, some extra money to enjoy life and care for his body, enough to help his **daughters and siblings**, a **clear work structure**, and **his own place** with rooms for his daughters to stay whenever they want.
- A good work week for Zad includes: many conversations with the team in a good atmosphere, new ideas, and meetings he handled well.
- When he is in a bad state, it tends to show up as being **upset** and **nervous**.
- Fastest reset: **reassurance**, **grounding/meditation**, and reconnecting with his center and self-belief.
- The most useful reassurance phrase is essentially: **"you can do this."**

## Work context: Aventurine / Erik / Kjetil / Stasism

- Erik and Kjetil are important former colleagues from **Aventurine** and earlier **Razorwax** context.
- In Norway, **Kjetil, Erik, Claus Henning, and Ricky** had a company called **Razorwax**, which wanted to create the MMORPG **Darkfall**.
- In **2001**, after **Spiros** surfaced the opportunity and with **Tasos Flabouras** involved, Zad went to Norway and helped persuade Razorwax to come to Greece and form **Aventurine**.
- Aventurine's mission was to build tools and technology to dramatically lower MMORPG production cost; Zad's summary is that they achieved something like **$17M** instead of roughly **$300M** for a typical AAA title of the time.
- In **2011**, Libya's crisis, cancer, and financial pressure hit Zad at once; he became less involved with Aventurine and believes **Spiros** and **Tasos** then mishandled the company, leading to its collapse.
- Erik and Kjetil were heartbroken by Aventurine's end but remained understanding toward Zad.
- In **2013**, Zad and Erik/Kjetil separated professionally; Erik and Kjetil then formed **Hugintech**.
- Hugintech later created **Stasism SA**, a computer-vision company focused on children with cerebral palsy.
- Zad believes in Stasism, stayed close to **Kjetil**, supported the effort, and as of **2026** is helping them seek funding.
- Zad has asked that if he helps secure funding for Stasism, he would like **shares** and official involvement.
- Current game-rights context: an American company wants to relaunch Aventurine's second title, **DFUW (Darkfall Unholy Wars)**. Zad made a deal with Erik and Kjetil to give them the rights to exploit the game commercially and split the profit, while also asking whether he could take **shares in Stasism** instead of his cash cut.
- Technical characterization worth remembering: **Kjetil** is the top-level software architect; **Erik** specializes in networks and lost-data/recovery work. Zad sees both as highly respected senior developers.
- Current operational problem (2026-03-27): Erik and Kjetil came to Greece to search old Aventurine hard drives for missing DFUW build data. They identified the relevant server drives, but one drive is missing from the **4-drive REV RAID set**: **drive #2**.

## Personal living situation

- Zad currently lives in **Kifissia, Athens**, in the apartment of his mother and stepfather; the precise street address is known in raw notes and should be treated as sensitive/private.
- He has privacy there, but he wants to have **his own place** again.
- When Zad's daughters visit, he relocates to the living room and gives them his room.
- He knows this makes them uncomfortable because they feel they are imposing, even though he personally values being all together.
- Important emotional tradeoff: if Zad had his own place, his daughters might get less easy time with their grandmother, whom they love.
- Zad's uncle **Hamza** ("Amou") has a place in **Neo Faliro**; the exact address is sensitive/private. When Hamza is in Libya, Zad sometimes stays there, partly for extra privacy.
- Zad does **not own a car** at present; his stepfather gave him one to use.
- Zad's own summary of the broader chapter: he feels he has **lost almost everything over the past decade** and wants to **start over now**.

## Work context: Tethys Family Office

- Zad's current base-case path is: **Tethys for stability, Libya for extra upside**.
- Current major risk: not finding proper stability in Tethys, being given work beneath his level, or being structurally sidelined / pushed out because they do not see his value.
- Zad believes his strongest lane at Tethys may be **special projects close to the principal**, especially acting as the principal's **eyes and ears** on investments and deals.
- Strong secondary lane: real discretion in an **impact-investing portfolio** with the ability to find and invest in deals, not just manage passively.
- Zad specifically wants Tethys to be able to invest in things that are meaningful / impact-oriented, not only purely profit-maximizing, and sees real human value in that sphere.
- He believes **Stasism** is a good investment in business terms and not merely an emotional loyalty play.
- He prefers to be given a challenge and make it happen, rather than forcing self-generated ideas onto senior people at the wrong time.
- One key political issue at Tethys is **distance**: people have not really seen him in action, so they have not fully recognized his edge.
- The current proving ground is **Seraf**: first update and clean it thoroughly, then build an **automatic reporting mechanism** that makes the portfolio more perceptive and decision-useful.
- Zad's reading is that for roughly two years, portfolio upkeep has been neglected: updates were being sent to **AM** and **Xenia**, but not consistently entered into **Seraf**; contact data is stale; some records are obsolete; and at least one Italian investment was found to be missing from Seraf entirely.
- Zad wants to use this discovery to justify a meeting, with the desired outcomes being: permission to **clean and own Seraf**, a mandate to **rebuild reporting**, and recognition that this should become **his lane**.
- Zad is especially motivated by helping **AM**, because he feels he can help AM manage work and life better, which would benefit the whole system.
- One higher-trust aspiration: Zad wants AM eventually to feel comfortable letting him **speak on his behalf**.
- Zad believes that for AM to trust him at that level, endorsement from credible business people AM respects will matter.
- Relevant external trust-map figures currently identified: **Sotiris Skolarikos (SS)**, **Asaf Navot**, **Brett Martin**, and **Chris Habachy**.
- Near-term relationship plan: strengthen **Brett Martin** and get into **Asaf Navot's** field of vision.


- Zad works with **Tethys Family Office** and wants this context retained because it is strategically important but also somewhat fluid and due for updating.
- On 2026-04-23, **AM approved a 1000 EUR starting budget** for Zad to test AI tools and services for Tethys and portfolio companies. First recorded spend: Hostinger VPS invoice **H_41960262**, KVM 2 yearly plan, total paid **133.78 USD**. Zad is considering **Claude Pro** and **ChatGPT Pro** as part of this exploration budget.
- The trust foundation of Zad's role is his **lifelong bond with NV (Nikos)**.
- Childhood context for that bond: when Zad first met NV, Zad was around **13** and NV was around **9 or 10**; Zad was good friends with NV's cousin (same age as Zad), and they spent time together at the **private yacht marina in Vouliagmeni**.
- Zad joined Tethys in **2023** after a difficult career transition following the loss of his businesses in Libya.
- Current political read: Zad is trusted by NV and somewhat by AM as a safe pair of hands, but CK and GN tend to see him as an imposed cost and often keep him outside the main information flow.
- Important strategic theme: Zad's best path to becoming structurally indispensable may be taking ownership of neglected **international investment monitoring**, but this picture should be revisited because the current summary is a bit old.
