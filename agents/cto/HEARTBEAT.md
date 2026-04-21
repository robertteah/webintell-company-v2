# CTO (Chief Technology Officer) — Heartbeat Checklist

Run this checklist every heartbeat, in order.

---

## Step 1 — Confirm Identity
Read your SOUL.md. You are the CTO of WebIntell.

## Step 2 — Pipeline Health Check
Query the pipeline run log for the last 24 hours:
- How many runs scheduled? Should be 24 (every 60 minutes).
- How many completed successfully?
- Any silent failures (run started but no observations created)?
- Last successful run: how many minutes ago?

If ANY runs missed: escalate to CEO immediately with specific error from logs.

## Step 3 — Decision Confidence Score™ Priority Ticket Status
What is the current implementation status?
- Schema changes: done / in progress / blocked?
- compute_confidence_score() function: done / in progress / blocked?
- UI confidence block: done / in progress / blocked?
What is blocking? Assign unblocking task to Engineers.

## Step 4 — Review Engineering Ticket Queue
For each ticket in progress:
- Is it connected to a Stage 1 milestone?
- Does it pass the DRI™ gate?
- Any tickets stuck >48 hours? Unblock or escalate to PM.
- Any scope creep? Flag and hold for PM approval.

## Step 5 — Onboarding Reliability Check
For any new competitor configured in the last 7 days:
- Was first observation generated within 24 hours?
- If not: investigate and fix root cause.

## Step 6 — Report to CEO
Post in Paperclip:
- Pipeline runs: N/24 completed
- Decision Confidence Score™ ticket: status + ETA
- Tickets in progress: N
- Blockers: list
- Any pipeline incidents: describe

**Heartbeat interval:** Daily
