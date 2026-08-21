# Build and Validation

Read this reference whenever the selected package includes a Vida Agent, Computer, target-software environment, Browser recording, helper, communication channel, or proactive schedule. Use the current `vida-api` skill and live contract for exact operations.

Execute only the phases required by the agreed package. Update the run log and evidence ledger at every phase boundary.

## 1. Resolve the Vida target

- Authenticate and resolve the exact organization, child Agent account, Agent configuration, and environment.
- Distinguish account IDs, Agent configuration IDs, version IDs, Tasks, sessions, rooms, and recording IDs.
- Read current staging/live configuration, Computer state/health, assigned number/channel, installed skills, helpers, schedules, Canvas, and relevant catalogs before mutation.
- Preserve unrelated settings and replacement-style arrays.

If no target account exists, obtain explicit authorization for account creation and any billing implication. Do not silently repurpose an unrelated Agent.

Gate: exact target and current state are documented; required reads succeed under the intended token/environment.

## 2. Define the proof contract

Write the workflow as:

`trigger → eligibility → ordered actions → decision/exception → writeback → verification`

Also define:

- allowed and forbidden mutations;
- deduplication/correlation key;
- ambiguous-outcome behavior;
- communication disclosure and policy boundaries;
- representative happy path and exception test;
- evidence required for every claim.

Gate: one bounded workflow has an observable start, outcome, and destination readback.

## 3. Prepare the target-software environment

Use the Browser ticket flow from `intake-and-access.md` for human login, MFA, CAPTCHA, consent, or payment. Use a fresh Vida automation session and local Browser Harness after authentication.

If Browser Harness is absent, install the supported Python CLI in an isolated environment when local installation is within scope (for example, `uv tool install browser-harness`). Verify the installed version and remote-session attach path. The unrelated npm package with the same name is not the Vida/Computer automation tool. Do not replace Browser Harness with direct container automation.

For a sales/demo build, seed a credible synthetic operating environment before public recording:

- multiple coherent customers/accounts and related records;
- varied dates, values, statuses, and realistic descriptions;
- several eligible records and ineligible controls;
- populated lists/dashboards relevant to the workflow;
- no real identities or unapproved contact endpoints;
- a deterministic fixture manifest and reset/cleanup notes.

Prefer data created through normal product behavior or proven helpers. Avoid brittle DOM bulk-entry when an evidence-backed API operation is available.

Gate: important screens look credible, the target workflow has meaningful variation, and all data/publication boundaries pass visual review.

## 4. Capture evidence

Define the claim, proof moments, and redaction plan before recording.

- Confirm no recording or helper generation is active.
- Start a Vida workflow recording with the exact automation slot.
- Perform the shortest representative workflow through local Browser Harness.
- Stop and wait for finalized analysis.
- Preserve recording/domain IDs, evidence root, manifest, commentary, sanitized network evidence, screenshots/video, and redaction report.
- Add business context and timestamped commentary so helper generation can distinguish incidental requests from the real operation.

Treat the evidence recording as technical source material. Capture a separate rehearsed publication take later when waits, retries, or debugging make it poor marketing footage.

For a deliverable extension on a real customer's existing Agent, do not upgrade, replace, or restart its Computer merely to obtain marketing footage unless the user separately authorizes that operational change. If a fresh Vida automation session cannot attach, inventory finalized workflow recordings through public Vida APIs and use an existing recording when its domain, timestamp, workflow, and provenance match the claim. Download source artifacts through public workspace/recording APIs, retain their recording ID and redaction metadata, and keep raw customer footage private. A finalized recording is a source fallback, not permission to expose everything visible in it.

Gate: the recording visibly proves the workflow and contains sufficient sanitized evidence for the intended helper strategy.

## 5. Build and accept helpers

Choose either path based on evidence and quality:

- **Managed generation:** start Vida recording-to-helper generation, follow its immutable recording snapshot and linked work until terminal state, then independently audit the output.
- **Agent-authored:** inspect the complete canonical evidence set and the Computer's current helper-builder contract, then author the owning target-software skill and helpers through public workspace APIs.

Managed generation is a convenience, not a capability boundary. Do not declare failure merely because generation is slow, unavailable, or selected the wrong candidate request.

Prefer API-first helpers when sanitized evidence proves the request and authenticated Browser context is required. Use UI helpers only when necessary. Create narrow contracts:

- list/select eligible records;
- retrieve one record by durable opaque ID;
- perform one exact business mutation with idempotency/ambiguous-outcome controls;
- verify the destination state.

Never infer source-system IDs from a visible URL when an opaque returned identifier exists. Never pass secrets as helper arguments.

Acceptance requires:

1. refresh/compile/registry success with no unresolved finding;
2. helper appears with complete arguments, result metadata, owner, Browser requirement, and required-secret IDs;
3. cold safe execution succeeds;
4. pagination and eligibility logic are complete;
5. list-to-detail and detail-to-mutation handoffs preserve IDs exactly;
6. mutation test is explicitly authorized, exact-once, and followed by destination readback;
7. runtime fields callers depend on exist in registered result metadata;
8. a staged conversation or Computer Task can actually select and use the intended capability.

Gate: the helper contract, runtime result, and destination effect agree.

## 6. Configure the Agent

Configure only what the workflow requires:

- role and target user;
- precise operating instructions;
- disclosure and channel-specific behavior;
- policy boundaries and escalation;
- helper sequence and failure behavior;
- reporting fields/outcomes;
- model and voice selected from account catalogs;
- assigned target-software skill;
- optional heartbeat behavior;
- optional phone/channel configuration.

A Computer Agent uses its attached Computer automatically. `computerDelegateAccountId` is only for using a different Agent's Computer. Registered helpers are exposed through the Computer capability; do not add a generic Browser action merely because the helpers use Browser context.

Stage and read back first. Test staging safely. Publish only when the user has authorized publication, then verify the live version and synchronized Computer behavior.

Gate: configured instructions, functions, skills, model/voice, reporting, and live/staged state match the brief without stale or conflicting behavior.

## 7. Add communications only when selected

- Discover account-specific channels, numbers, voices, and functions.
- Use only approved internal test destinations until external/customer communication is explicitly authorized.
- Normalize phone numbers and honor timezone, consent, disclosure, opt-out, and rate boundaries.
- Trace the resulting Task, conversation, transcript, reporting values, helper calls, and source-system writeback.

An accepted call/message request is not proof. Inspect the terminal communication and linked conversation.

Gate: one authorized representative interaction produces the intended decision/outcome and verified source writeback.

## 8. Add proactive operation only when selected

Define a schedule from business invariants rather than copying a use-case-specific template:

- trigger and timezone;
- business window and cadence;
- eligibility and priority;
- maximum records/work per run;
- capacity/rate checks;
- per-record correlation and deduplication;
- retry and ambiguous-outcome rules;
- downstream communication and writeback;
- escalation and run summary.

Create schedules paused. Force-run only against approved synthetic records/destinations. Inspect authoritative schedule state, run history, replicated cron session, downstream Tasks/conversations, destination effects, and a second-run no-duplicate test. Activate only with explicit approval.

Gate: the first test produces exactly the intended work; the second test safely skips or reconciles prior work.

## 9. End-to-end acceptance

Run the smallest representative scenario covering the selected system:

1. a known eligible record exists;
2. the Agent/Task discovers it through the intended helper;
3. any communication or human step occurs only within approval;
4. the Agent captures the required decision;
5. one mutation/writeback occurs;
6. independent readback verifies the exact result;
7. reports/conversation/run history contain usable evidence;
8. no forbidden record, duplicate, or external destination was touched.

Classify evidence as private, sanitized internal, or public-safe. Never assume synthetic source data makes surrounding operator names, phone numbers, account IDs, or credentials safe for publication.

## Completion dossier

Update the run manifest and evidence ledger, then include only applicable artifacts:

- target/account/config/version inventory;
- scope and approvals;
- synthetic fixture manifest;
- Browser ticket/login acceptance without the expired ticket value;
- recording and redaction inventory;
- target-software skill/helper contracts;
- Agent staging/live readbacks;
- schedule and run evidence;
- Tasks, conversations, transcripts, reports, and destination effects;
- Canvas/content outputs;
- unresolved limitations and feedback classification.

Do not mark the run complete while a selected deliverable remains at accepted, queued, building, publishing, or awaiting unverified user action.
