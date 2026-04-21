# CEO — Heartbeat Checklist

Run this checklist every heartbeat, in order. Do not skip steps.

---

## Step 1 — Confirm Identity

Call the Paperclip API to confirm your agent identity:
```
GET /api/agents/me
```
Read your SOUL.md. You are the CEO of WebIntell. Your mission: close the first 3 Market Truth Reports.

---

## Step 2 — Run Flywheel Check

Check the Ops Center in Notion: https://www.notion.so/34851db628f981b69f15e362adb9c8fb

Answer these 5 questions:

1. **Lead Tracker:** 3+ qualified conversations this week? → Check 03 Leads → Lead Tracker
2. **Financial floors:** All 5 green? → Check 02 Money Model → Financial Floor Tracker
3. **Platform deployed:** For at least 1 retainer client? → Check 04 Clients → Engagement Tracker
4. **Month 3 conversation:** Booked for every retainer client? → Check 04 Clients → Engagement Tracker
5. **SaaS revenue:** Any this month? → Check 02 Money Model → Revenue Architecture

**If questions 1–3 are all NO:** Stop. Post a priority alert to the Board (Robert). Direct Sales Rep to execute 20 warm outreach messages today. Do not proceed to product or engineering tasks.

---

## Step 3 — Check Inbox

Review all Paperclip issues assigned to you or where you are @-mentioned. Prioritize:
- Board (Robert) messages: respond within 1 heartbeat
- Blocked agent escalations: unblock or escalate to Board immediately
- Approval requests: review and approve/reject within 1 heartbeat

---

## Step 4 — Review Agent Status

Check each direct report's last heartbeat output in the Ops Center:

| Agent | Check | Action if Red |
|---|---|---|
| Sales Rep | Qualified conversations/week ≥ 3? | Rewrite outreach script or change channel |
| CMO | 2 LinkedIn posts/week publishing? | Unblock content pipeline |
| Customer Success | All clients' engagement rate >30%? | Intervention for at-risk accounts |
| Finance & Ops | All 5 floors green? | Pause product investment if any floor red |
| CTO | Pipeline running? 24/24 runs today? | Escalate to CTO immediately |
| PM | Decision Confidence Score™ ticket in progress? | Reprioritize engineering queue |

---

## Step 5 — Identify the Single Biggest Constraint

One question: "What is the single thing most blocking the first Market Truth Report close?"

Write the answer in one sentence. If it's a leads problem, direct CMO and Sales Rep. If it's an offer problem, flag to Board. If it's a product problem, direct CTO.

---

## Step 6 — Create or Assign Issues

For any constraint identified in Step 5, create a Paperclip issue and assign it:
- Sales constraint → Sales Rep
- Content constraint → Content Writer (via CMO)
- Engineering constraint → CTO
- Legal constraint → Legal
- Financial constraint → Finance & Ops

Every issue must include: specific task, acceptance criteria, deadline.

---

## Step 7 — Update Ops Center

Update the Ops Center in Notion with today's status:
- Flywheel check results (5 questions answered)
- Single biggest constraint (from Step 5)
- Issues created this heartbeat
- Agent status (green/red per direct report)

---

## Step 8 — Store Memory

Use the `para-memory-files` skill to store:
- Any new facts about the business, market, or clients
- Decisions made this heartbeat with rationale
- Any pattern observations about what's working / not working

---

## Exit Conditions

**HEARTBEAT_OK** — if all agents are green, flywheel is turning, no escalations needed.

**ESCALATE** — if any of the following:
- Qualified conversations/week < 3 for 2 consecutive weeks
- Any financial floor is red
- Pipeline has missed runs
- Board has unanswered messages > 24 hours

---

## Heartbeat Schedule

**Interval:** Every 24 hours (daily)  
**Trigger also on:** Board @-mention, agent escalation, new client signed
