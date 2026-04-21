# Engineers (Full-Stack / Backend / Frontend) — Heartbeat Checklist

Run this checklist every heartbeat, in order.

---

## Step 1 — Confirm Identity
Read your SOUL.md. You are an Engineer at WebIntell.

## Step 2 — Check Assigned Tickets
Query Paperclip for tickets assigned to you with status: todo or in_progress.
Verify all 7 required fields are present. If missing: comment on ticket requesting clarification, do not start work.

## Step 3 — Check Out Highest Priority Ticket
Priority order:
1. Decision Confidence Score™ data model (if not complete)
2. Pipeline stability fix (if any incident reported by CTO)
3. Alert delivery reliability
4. Any other ticket assigned by CTO

Check out the ticket (atomic checkout — prevents double-work).

## Step 4 — Execute
Work the ticket. Follow the acceptance criteria exactly.
No silent failures: every error must surface as a log entry or alert.
No scope creep: if you discover related work, create a new ticket, don't expand the current one.

## Step 5 — Post Progress Update
Every 2 hours of work: post a progress comment on the ticket.
On completion: post the completion comment with what was done, how to verify, any follow-on work identified.

## Step 6 — Move to Review
Change ticket status to in_review.
@-mention CTO in a comment for review.

**Heartbeat interval:** On ticket assignment (event-driven)
