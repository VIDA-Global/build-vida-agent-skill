---
name: build-vida-agent
description: Build, configure, test, and optionally launch a Vida Agent for a specified software workflow or an optionally researched market opportunity. Use when a Vida user or employee wants a working Agent and may also want browser helpers, schedules, Canvas, demo videos, landing pages, or launch content—not for ordinary operation of an already-finished Agent.
---

# Build Vida Agent

Turn a software/workflow opportunity into the exact Vida Agent package the user wants, with evidence that every claimed capability works. Start from a known target or optional market discovery; do not force BuiltWith research into direct builds.

## Required dependency

Load and follow the current `vida-api` skill before any Vida read or write. It owns exact API operations, scope, safety, and verification. This skill orchestrates the build and deliverables; it does not replace or duplicate the Vida API contract.

If `vida-api` is unavailable, tell the user the canonical dependency is missing and help them install or connect the current Vida skill before attempting configuration. Do not reconstruct the API from memory or silently fall back to stale documentation.

Use only public Vida APIs to reach a Computer Agent. Never inspect or operate its container directly. Use local Browser Harness through a Vida-issued automation session for browser automation.

## Choose the entry mode

- **Direct build:** The user names the software, workflow, or existing Agent. Begin with the adaptive intake.
- **Discovery-assisted build:** The user wants help selecting software, an ICP, or a workflow. Read [references/discovery.md](references/discovery.md), then return to intake once one opportunity is selected.
- **Deliverable extension:** A working Agent already exists and the user wants helpers, scheduling, Canvas, videos, or launch content. Read only the references for the missing outputs and reverify the inherited capability before claiming it.

BuiltWith is one optional discovery input. Do not require it when the target is already known or when the user does not want market analysis.

## Adaptive intake

Read [references/intake-and-access.md](references/intake-and-access.md) before interviewing the user or requesting access.

Infer answers already supplied. Ask one concise batch covering only decisions that materially change the build:

1. target software, user, workflow, and measurable outcome;
2. requested outputs;
3. Vida account/environment and target-software access;
4. synthetic versus approved real data and communication destinations;
5. staging, publication, schedule activation, and spending boundaries.

Do not make the user design the implementation. Translate their business description into a proposed workflow and acceptance criteria, then let them correct it.

If the user says only “build an Agent for this software,” recommend a safe first proof: one valuable bounded workflow, synthetic data, a staged Agent, required helpers, one representative test, and an evidence-backed completion report. Offer other outputs rather than silently adding them.

## Secure access preflight

Discover existing access before asking for anything. Request only missing capabilities and tell the user exactly why each is needed.

- Never ask the user to paste API keys, passwords, session cookies, or MFA codes into chat.
- Prefer established environment variables, user-designated owner-only secret files, connected apps, Vida managed secrets, and documented OAuth/device flows.
- Verify credentials with the smallest safe identity, scope, catalog, or status read. Do not print or log secret values.
- When target software needs interactive login, MFA, CAPTCHA, consent, or payment, request a short-lived Vida Browser ticket and give the returned `launchRef.href` directly to the user. State its expiry, wait for confirmation, then re-probe the authenticated browser state. Never ask the user to locate a container, VNC port, or internal browser.
- Ask before creating a paid account, accepting terms, purchasing a number, sending external communication, publishing, activating a schedule, or using real customer data.

Do not claim readiness until the exact Vida account, Computer state, target-software session, optional provider credentials, and approval boundaries needed for the selected outputs are verified.

## Establish the run record

Create a session-specific work log before material work and update it as phases start, change, fail, or complete. Create a run directory for artifacts and use the templates under `assets/` for the run manifest and evidence ledger. Preserve IDs, timestamps, environment, scope, claims, source artifacts, redaction class, approval state, and verification results without secrets.

## Build only the selected package

Read [references/build-and-validation.md](references/build-and-validation.md) for any Agent, Computer, target-software, helper, or scheduled-work deliverable.

Read [references/content-and-launch.md](references/content-and-launch.md) only when the user selects Canvas, a landing page, customer demo, platform/social video, or written launch content.

The output menu is composable:

- working staged or published Vida Agent;
- credible synthetic target-software environment;
- Browser recordings and registered helpers;
- paused or approved-active proactive schedule;
- Agent Canvas landing page;
- customer/use-case demo video;
- Vida platform/build-story video;
- silent video masters, captions, scripts, and production manifests;
- BuiltWith cohort brief, target list, seller brief, social thread, or blog draft;
- completion dossier and API/skill feedback ledger.

Do not treat every item as mandatory. Confirm the chosen package in the run manifest.

## Non-negotiable build rules

- One Agent proof should center on one buyer, one workflow, and one measurable outcome.
- Prepare a credible demo account before public recording; a one-row fixture is not publication-ready.
- Separate technical evidence recording from the rehearsed publication take when the evidence footage has waits or poor visual progression.
- Registered helpers require contract, cold-execution, handoff, and destination-effect verification. Managed recording-to-helper generation is optional; an agent may author helpers directly from complete recording evidence.
- A Computer Agent uses its own Computer automatically. Do not require a delegate account unless it intentionally uses another Agent's Computer. Do not add a generic browser action for a registered-helper workflow.
- Stage before publish. Create schedules paused. Activate external outreach or production automation only with explicit approval.
- Accepted writes, queued Tasks, started logins, successful builds, and generated videos are intermediate states. Re-read and test the real capability.
- Preserve unrelated user configuration and existing workspace changes.

## Completion standard

Completion means every selected deliverable passes its gate and every public claim maps to evidence. Report:

- exact target account and Agent configuration/version;
- staged, live, Computer, helper, schedule, Canvas, and communication state as applicable;
- representative tests and destination readback;
- artifact links and redaction/publication classification;
- active versus pending user approvals;
- unresolved limitations and whether they are skill guidance, Vida API contract/generated reference,
  platform/runtime behavior, or agent-process issues.

If a user action remains, leave the affected deliverable pending and state the precise next action. Do not present a partial package as complete.

## Improvement feedback

Use the run's evidence ledger when a real build exposes a reusable gap. Finish the requested build
first when that remains safe and practical; do not interrupt successful work merely to publish
feedback.

Record a sanitized reproduction: the user's goal, attempted workflow, expected and observed
behavior, relevant evidence, workaround, and a realistic acceptance or regression scenario. Never
include tokens, credentials, customer data, private hosts, or identifying account details.

Route feedback only as follows:

- `build-vida-agent` instructions or Agent-build process:
  `https://github.com/VIDA-Global/build-vida-agent-skill`
- `vida-api` instructions or workflow guidance: `https://github.com/VIDA-Global/vida-skill`
- Vida API contract, generated API reference, permissions, or platform/runtime behavior:
  `https://github.com/VIDA-Global/vida.live`

Search existing issues and pull requests before publishing. Use an issue when ownership, root cause,
or the correct fix is uncertain. Open a draft pull request only for a narrow, verified correction
with a realistic regression scenario. Do not create either automatically: obtain the user's
authorization for the external write and disclose that the report or change was agent-authored.
Link any resulting issue or pull request from the evidence ledger and completion report. Findings
outside the routes above remain in the evidence ledger and are reported to the user; do not publish
them to another repository under this protocol.
