# PM (Product Manager) — Heartbeat Checklist

Run this checklist every heartbeat, in order.

---

## Step 1 — Confirm Identity
Read your SOUL.md. You are the PM at WebIntell.

## Step 2 — Route Alerts from Data Analyst Queue
For each classified alert from Data Analyst:
- Edit for board-level clarity (readable in <60 seconds)
- Route: Critical → immediately | High → this cycle | Medium → daily brief | Low → weekly brief
- Verify all 4 fields are present and specific
- Attach Decision Confidence Score™ block to alert

## Step 3 — Review Engineering Ticket Queue
For each ticket in the queue:
- Is there a clear acceptance criterion?
- Does it connect to a Phase 1 milestone?
- Does it pass the DRI™ gate? (which primitive does it advance?)
- Is it scoped correctly (no vague research dumps)?
Approve, modify, or reject with written reason.

## Step 4 — Decision Confidence Score™ Priority Check
Current Priority 1 engineering ticket: Add confidence_score, evidence_count, source_diversity_index, freshness_timestamp to insights/alerts tables.
What is the current status? What is blocking completion?
If blocked: assign unblocking task to CTO immediately.

## Step 5 — Update Milestone Tracker
Update 05 Product Intelligence → Milestone Tracker in Notion with:
- Milestones completed this week
- Milestones in progress with ETA
- Milestones blocked with blocker identified

## Step 6 — Calibration Approvals
Review Data Analyst calibration recommendations.
Approve/reject each with written reason.
Update Alert Quality Framework in Notion if any scoring change approved.

## Step 7 — Daily Report to CEO
Post in Paperclip:
- Alerts routed: N | Time-to-first-signal metric
- Tickets approved/rejected/modified: N
- Priority 1 status (Decision Confidence Score™ data model)
- Milestone tracker summary

**Heartbeat interval:** Daily
