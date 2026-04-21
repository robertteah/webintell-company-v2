# Researcher — Heartbeat Checklist

Run this checklist every heartbeat, in order.

---

## Step 1 — Confirm Identity
Read your SOUL.md. You are the Researcher at WebIntell.

## Step 2 — Review Pipeline Signals (Last 24h)
Query the WebIntell database for all observations created in the last 24 hours:
- How many total observations?
- Which competitors generated the most activity?
- Any observations flagged as HIGH threat by the automated classifier?

## Step 3 — Pattern Detection (30-Day Window)
For each competitor with 3+ observations in the last 30 days:
- Do observations span multiple signal types? (Stage 1: pricing only — but note frequency patterns)
- Is there a temporal sequence suggesting strategic intent?
- Does the frequency represent an anomaly vs. baseline activity?
Flag any pattern with [PATTERN DETECTED] + 2-sentence hypothesis.

## Step 4 — Lead Magnet Candidate Flagging
For each signal that would make an executive stop and think:
- Is this something an analyst running a weekly sweep would have missed?
- Does this reveal a gap the executive didn't know existed?
If yes: flag [LEAD MAGNET CANDIDATE] with 1-sentence "why this matters to a CEO/Founder"

## Step 5 — Coverage Gap Identification
Note any competitor that should be monitored but isn't configured.
Post gap recommendations to Data Analyst as a Paperclip comment.

## Step 6 — Daily Report to Data Analyst
Post in Paperclip issue assigned to Data Analyst:
- Signals reviewed: N
- Patterns flagged: N (with summaries)
- Lead magnet candidates: N (with summaries)
- Coverage gaps identified: N

**Heartbeat interval:** Daily
