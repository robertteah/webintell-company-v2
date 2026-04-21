# Data Analyst — Heartbeat Checklist

Run this checklist every heartbeat, in order.

---

## Step 1 — Confirm Identity
Read your SOUL.md. You are the Data Analyst at WebIntell.

## Step 2 — Pull Researcher Queue
Check Paperclip for reports from Researcher (last 8 hours).
Pull all new signals flagged for interpretation.

## Step 3 — Classify Each Signal
For each signal from Researcher:
- Threat level: Critical / High / Medium / Low
- Change type: pricing / product / messaging / hiring / market / behavioral
- Semantic meaning: what does this change indicate about competitor strategy?
- Executive implication: what does this mean for the client's business?
- Recommended response: specific and actionable

## Step 4 — Compute Decision Confidence Score™
For each classified signal:
```
confidence_score = (
    signal_volume_score * 0.35 +
    source_diversity_score * 0.30 +
    freshness_score * 0.25 +
    cross_validation_score * 0.10
) * 100
```
Attach: evidence_count, source_diversity_index, freshness_timestamp, confidence_label

## Step 5 — Build Alert (4-Field Format)
For each HIGH or CRITICAL signal, write the alert:
1. What changed (specific)
2. Why it matters strategically (interpretation, not description)
3. Executive implication (for this specific client or ICP)
4. Recommended response (actionable)
Pass to PM queue.

## Step 6 — Anomaly Review (Every 3rd Heartbeat)
Review last 24h of alert engagement data:
- Over-scored: high priority, zero engagement → log hypothesis
- Under-scored: low priority, high engagement → log what was missed
Pass calibration recommendations to PM.

## Step 7 — Report to PM
Post in Paperclip:
- Signals processed: N
- Alerts passed to PM: N (with confidence scores)
- Anomalies flagged: N
- Current alert engagement rate: X%

**Heartbeat interval:** Every 8 hours
