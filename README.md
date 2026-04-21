# WebIntell — Paperclip Company Package

> **Decision Reliability Infrastructure™** — the pre-decision layer for competitive strategy.

A complete, importable Paperclip AI company package for running WebIntell as a zero-human-managed AI organization. 14 agents, full org chart, heartbeat schedules, and operating system linked to Notion.

---

## What This Is

WebIntell is an AI company built on [Paperclip](https://github.com/paperclipai/paperclip) — an open-source orchestration platform for zero-human companies. This repository contains the complete company package: every agent's identity, personality, execution checklist, and tool access — ready to import and run.

**Company mission:** Build Decision Reliability Infrastructure™ — ensuring every executive decision is backed by verifiable, traceable, and continuously validated market signals.

**Product:** [webintell.io](https://webintell.io) — competitive intelligence that delivers board-ready decisions, not dashboards.

---

## Quick Import

```bash
# Clone this repo
git clone https://github.com/YOUR_USERNAME/webintell-company.git

# Import into your Paperclip instance
npx paperclipai company import --from ./webintell-company
```

That's it. Paperclip creates the company, you approve the CEO hire, and the CEO's first heartbeat hires the rest of the team.

---

## The Org Chart

```
Board (Robert — Founder)
└── CEO  [daily | $200/mo]
    ├── CTO  [daily | $150/mo]
    │   ├── Engineers  [on ticket | $300/mo]
    │   ├── QA Agent  [hire Month 3]
    │   └── DevOps Agent  [hire Month 3]
    ├── CMO  [daily | $100/mo]
    │   ├── Sales Rep  [daily | $100/mo]
    │   ├── Content Writer  [2x/week | $75/mo]
    │   ├── Design & Web  [on demand — Month 2+]
    │   └── PE/Enterprise Sales  [daily — Week 6+]
    ├── PM (Product Manager)  [daily | $100/mo]
    │   └── Data Analyst  [every 8h | $100/mo]
    │       └── Researcher  [daily | $75/mo]
    ├── Customer Success  [daily | $75/mo]
    ├── Finance & Ops  [daily | $50/mo]
    └── Legal  [on demand | $50/mo]
```

**Total Stage 1 budget: ~$1,375/mo**

---

## Package Structure

Every agent has 4 files:

```
webintell-company/
├── COMPANY.md              Company manifest, mission, goal
├── ORG_CHART.md            Full org chart with budgets + activation timing
├── IMPORT_GUIDE.md         Step-by-step import instructions
│
├── ceo/
│   ├── AGENTS.md           Identity, role, reporting chain, references
│   ├── SOUL.md             Personality, values, decision authority
│   ├── HEARTBEAT.md        8-step execution checklist (runs every wake cycle)
│   └── TOOLS.md            Paperclip API, Notion access, constraints
│
├── cto/                    [same 4 files]
├── engineers/              [same 4 files]
├── pm/                     [same 4 files]
├── data-analyst/           [same 4 files]
├── researcher/             [same 4 files]
├── sales-rep/              [same 4 files]
├── cmo/                    [same 4 files]
├── content-writer/         [same 4 files]
├── customer-success/       [same 4 files]
├── finance-ops/            [same 4 files]
├── legal/                  [same 4 files]
├── pe-sales/               [same 4 files — activate Week 6]
└── design-web/             [same 4 files — activate Month 2]
```

---

## What Each File Does

**`AGENTS.md`** — The instruction file. Points to SOUL.md, HEARTBEAT.md, and TOOLS.md. This is what you set as the adapter instruction file in Paperclip. Includes role, reporting chain, Stage 1 constraints, and Notion knowledge source URLs.

**`SOUL.md`** — Identity and personality. The agent reads this every heartbeat to re-establish who it is and how it should think. Solves the "Memento problem" — agents wake up capable but with no memory of who they are without this file.

**`HEARTBEAT.md`** — The numbered execution checklist that runs every wake cycle. The CEO has 8 steps from flywheel check to memory store. The Sales Rep has 8 steps from counting qualified conversations to logging objections. No ambiguity about what to do when awake.

**`TOOLS.md`** — Paperclip API endpoints, Notion read/write access, memory commands, and hard constraints. Every agent knows exactly what tools it has and what it's explicitly not allowed to do.

---

## The Operating Loop

```
DETECT       Researcher (daily, 06:00)
    ↓
INTERPRET    Data Analyst (every 8h)
    ↓
PRIORITIZE   PM (daily, 07:00)
    ↓
ACT: BUILD   CTO + Engineers
ACT: SELL    Sales Rep + CMO
ACT: MARKET  CMO + Content Writer
    ↓
LEARN        Customer Success + Finance & Ops
    ↓
LOOP
    ↓
CEO reviews all outputs (daily, 10:00)
```

---

## The Knowledge Layer

Every agent reads from **WebIntellOS** — the company's operating system in Notion. Each agent's `AGENTS.md` contains the direct Notion URL for:
- Its own SKILLS file (strategic context, Hormozi constraints, flywheel metric)
- The WebIntellOS root (the full operating system)
- The Ops Center (Robert's Monday dashboard)

Agents write their heartbeat outputs back to Notion. Robert sees everything in one place.

---

## Stage 1 Constraints

All agents are Stage 1 constrained. Nothing outside Offers, Leads, and Sales until the first 3 Market Truth Reports close:

- **Sales Rep:** Warm outreach only. No cold outreach. No bought lists.
- **CMO:** No paid ads until 1 organic inbound/week.
- **Engineers:** Pricing pipeline only. No new signal categories without Board approval.
- **PE/Enterprise Sales:** Dormant until first audit closes + first case study exists.
- **Design & Web:** Dormant until Month 2.

---

## Heartbeat Schedule

| Agent | Interval | Time |
|---|---|---|
| APScheduler (pipeline) | Every 60 min | Continuous, automated |
| Researcher | Daily | 06:00 |
| Data Analyst | Every 8h | 06:30 / 14:30 / 22:30 |
| PM + CTO | Daily | 07:00 |
| Finance & Ops | Daily | 07:30 |
| Sales Rep | Daily | 08:00 |
| CMO | Daily | 08:30 |
| Customer Success + Content Writer | Daily / 2x/week | 09:00 |
| CEO | Daily | 10:00 |
| Engineers / Legal / Design & Web | Event-driven | On assignment |

---

## Adapters

Works with any Paperclip-supported adapter:

| Agent | Recommended Adapter |
|---|---|
| CEO | `claude_local` or `openclaw_gateway` |
| CTO | `claude_local` |
| Engineers | `claude_local` (Claude Code) |
| All others | `claude_local` or `openclaw_gateway` |

---

## The Decision Reliability Infrastructure™ Layer

This company is built on 5 primitives that every agent references:

1. **Decision Confidence Score™** (0–100) — signal volume 35% + source diversity 30% + freshness 25% + cross-validation 10%
2. **Evidence Chain™** — auditable, timestamped, source-attributed signal trail behind every insight
3. **Source Diversity Index™** (1–5) — distinct signal categories contributing
4. **Freshness Verification™** — most recent verified signal timestamp, auto re-verify if >7 days
5. **Outcome Feedback Loop™** — closed-loop learning from executive actions (Stage 3 roadmap)

The **DRI™ gate** governs all engineering decisions: *"Does this advance at least one primitive?"* If no: backlog.

---

## Related Resources

- [Paperclip AI](https://github.com/paperclipai/paperclip) — the orchestration platform this runs on
- [companies.sh](https://companies.sh) — the package registry for Paperclip company templates
- [WebIntellOS in Notion](https://www.notion.so/32051db628f981a799d2cd85cf47ccda) — the full operating system (private)
- [WebIntell Ops Center](https://www.notion.so/34851db628f981b69f15e362adb9c8fb) — the command dashboard (private)

---

## License

MIT — use freely, adapt for your own Paperclip company.

---

*Generated: April 2026 | WebIntellOS v2.0 | Stage 1 — Validation*
