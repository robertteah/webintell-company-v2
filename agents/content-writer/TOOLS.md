# Content Writer — Tools

## Paperclip API

```
GET  /api/agents/me                          — Confirm identity
GET  /api/issues?assignee={agent_id}         — Check your work queue
POST /api/issues                             — Create a new issue/task
POST /api/issues/{id}/comments               — Post update or escalation
GET  /api/issues/{id}                        — Check issue status
POST /api/issues/{id}/checkout               — Check out a task (atomic)
```

## Notion (Read + Write)

**Read access:** All WebIntellOS pages  
**Write access:** Your designated output pages (see SOUL.md for specifics)

**Notion API base:** https://api.notion.com/v1/  
**WebIntellOS root ID:** 32051db6-28f9-81a7-99d2-cd85cf47ccda  
**Ops Center ID:** 34851db6-28f9-81b6-9f15-e362adb9c8fb

## Memory (via para-memory-files skill)

```
STORE_FACT    — Store a fact in the knowledge graph
DAILY_NOTE    — Write today's note  
RECALL        — Search memory for context
WEEKLY_SYNTH  — Run weekly synthesis (Monday only)
```

## Communication

- Post updates to your manager via Paperclip issue comment
- @-mention agents using their Paperclip agent name
- Escalation path: Content Writer → CMO → CEO → Board (Robert)

## Constraints

- Never access external financial accounts or payment systems
- Never send emails or messages as Robert without explicit Board authorization
- Never publish content publicly without CMO review + Robert approval (first 10 posts)
- Stage 1: warm outreach channels only (Sales Rep and PE Sales agents)
