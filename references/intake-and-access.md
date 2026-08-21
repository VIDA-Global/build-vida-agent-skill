# Intake and Access

Read this reference for every new run. Keep the interview short, adaptive, and business-first.

## Convert the request into a build brief

Resolve these fields from existing context before asking questions:

| Field | What must be known |
| --- | --- |
| Target | Software, account/tenant, intended user, and whether an Agent already exists |
| Workflow | Trigger, eligible record, Agent actions, human decisions, writeback, and exception path |
| Outcome | Revenue, response time, throughput, accuracy, cost, compliance, or another measurable result |
| Channel | Voice, messaging, email, browser-only, internal Task, or a combination |
| Volume | Expected queue size, cadence, rate limits, and concurrency/capacity constraints |
| Data | Synthetic, approved internal, or customer data; retention and redaction boundaries |
| Deliverables | Exact items from the composable output menu |
| Launch state | Draft, staged, published, paused schedule, approved active schedule, or content draft only |
| Approvals | Who can authorize spend, target-system mutations, communication, publishing, and activation |

Propose a concise interpretation when the user describes the business problem but not the automation. Ask for correction rather than asking them to invent technical details.

## Output selection prompt

When outputs are ambiguous, offer a compact checklist in plain language:

- working Agent;
- browser automation/helpers;
- proactive schedule;
- seeded demo account;
- Agent Canvas/landing page;
- customer demo video;
- platform/social build video;
- written launch content;
- optional market research/target list.

Recommend only what advances the user's stated goal. A direct internal automation may need only the Agent, helpers, schedule, and validation. A sales proof may also need synthetic data, Canvas, and videos.

## Access inventory

Discover before requesting. Check user-supplied files, established environment-variable names, connected apps, and Vida catalogs without printing values.

| Capability | Preferred secure path | Safe verification |
| --- | --- | --- |
| Vida API | `VIDA_API_KEY` or user-designated owner-only secret file; `VIDA_API_BASE_URL` for non-default environment | Account identity, hierarchy, and target account read |
| Target software browser | Existing authenticated Computer browser; otherwise Vida `/browser/ticket` handoff | Browser automation session and expected signed-in page/account |
| Target software API secret | Vida managed secret declared by the owning helper/skill | Secret deployment/status and safe read helper |
| BuiltWith | Existing secure environment or designated secret file | Account/status or a minimal non-sensitive query |
| ElevenLabs | Existing secure environment or designated secret file | User/models/voice metadata or one approved short generation |
| Communication | Assigned Vida number/channel plus approved test destination | Catalog/status read and one explicitly approved test |
| Canvas/publication | Target Agent's Canvas state and user approval | Canvas read, publish result, then public/private access check |

Never prescribe a universal local secret filename. Accept the user's established secure location, or ask them to set a conventional environment variable. Tighten file permissions only when clearly authorized and report the change.

## Secret-handling contract

- Never place secret values in prompts, helper arguments, workspace source, Canvas, recordings, screenshots, run manifests, shell output, or final reports.
- Do not echo entire environment or secret files. Print variable names or redacted metadata only.
- Use URL encoding and documented authentication transport.
- Store declared Agent runtime secrets through Vida managed-secret APIs.
- If a credential appears in captured material, stop publication work, revoke/rotate when authorized, and replace the affected artifact.
- Do not retain short-lived Browser, OAuth, CDP, or launch tickets in durable logs.

## Interactive browser handoff

Use this flow whenever a human must authenticate or approve inside the target software:

1. Resolve the exact Agent account and verify its Computer is running.
2. Call the current Vida Browser ticket operation.
3. Give the user the returned complete `launchRef.href`; never construct a URL from `browserPath`, ports, or profile metadata.
4. State that the link is short-lived and give the expiry.
5. Wait for the user to say the login/action is complete. Refresh the ticket on request rather than reusing an expired link.
6. Create a fresh automation session and verify the expected domain, signed-in identity/tenant, and required access without exposing account secrets.
7. Resume seeding, recording, or automation only after this verification.

A ticket response proves handoff availability, not successful authentication. The post-login probe is the acceptance evidence.

## Authorization boundaries

Record separate approval states for:

- trial signup versus paid signup;
- synthetic mutation versus real-data mutation;
- approved internal test communication versus external/customer communication;
- staging versus publishing;
- schedule creation versus activation;
- draft content versus public posting;
- reusable target list creation versus CRM import or outreach.

Broad permission to “build the Agent” normally covers reversible configuration, synthetic setup, safe reads, and representative internal testing. It does not automatically authorize paid purchases, live customer contact, real-data bulk mutation, public posting, or production schedule activation.

## Readiness output

Before material construction, summarize:

- agreed workflow and acceptance test;
- selected deliverables;
- verified access;
- missing user actions;
- approved mutations/communications;
- explicit stop conditions.

Proceed when missing items affect only later optional deliverables. Do not block a core Agent build merely because optional BuiltWith, content, or publication access is absent.
