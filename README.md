# Build Vida Agents

`build-vida-agents` is a Codex skill for turning a software workflow into a working, evidence-backed [Vida](https://vida.io) Agent.

It can start with a known workflow, help select an opportunity through optional market research, or extend an existing Agent with browser helpers, proactive schedules, Canvas, demo videos, landing pages, and launch content. The skill keeps those outputs composable: a simple build does not become a full campaign unless the user asks for one.

## What it does

- Translates a business problem into one bounded, testable Agent workflow.
- Discovers required access without asking users to paste secrets into chat.
- Uses Vida-issued browser handoffs for login, MFA, consent, and other human-only steps.
- Seeds credible synthetic demo data before recording public product footage.
- Records browser evidence and builds registered helpers from the proven workflow.
- Configures and validates Vida Agents, Computers, communications, and paused-first schedules.
- Builds Agent Canvas landing pages and two distinct video stories: customer proof and Vida platform proof.
- Produces silent masters, directed Eleven v3 narration, captions, scripts, and reusable launch content when selected.
- Maintains a run manifest, evidence ledger, and work log so every claim maps to proof.

## Entry modes

1. **Direct build** — Start from a named application, workflow, or existing Agent.
2. **Discovery-assisted build** — Use ICP context and optional sources such as BuiltWith to select one repeatable opportunity.
3. **Deliverable extension** — Add missing helpers, scheduling, Canvas, videos, or launch assets to an Agent that already works.

BuiltWith is optional. A prompt as simple as “build a Vida Agent for this software” is enough to begin a short adaptive intake.

## Requirements

- Codex with skill support.
- The current [`vida-api`](https://github.com/VIDA-Global/vida-skill) skill.
- Authorized access to the relevant Vida organization and target software.
- Optional provider access only for selected outputs, such as BuiltWith for market research or ElevenLabs for narration.

The skill uses public Vida APIs for Agent work and Vida-issued automation sessions with local Browser Harness for browser work. It never requires direct access to an Agent container.

## Install

Clone the repository as the installed skill directory:

```bash
git clone https://github.com/VIDA-Global/build-vida-agents-skill.git ~/.codex/skills/build-vida-agents
```

For local development, keep a workspace checkout and symlink the installed skill to it:

```bash
git clone https://github.com/VIDA-Global/build-vida-agents-skill.git /path/to/workspace/build-vida-agents-skill
ln -s /path/to/workspace/build-vida-agents-skill ~/.codex/skills/build-vida-agents
```

Restart or open a fresh Codex session if the skill catalog does not refresh immediately.

## Example prompts

```text
Use $build-vida-agents to build an Agent that follows up on stale quotes in our field-service software. Start staged, use synthetic data, and create the browser helpers and a paused daily schedule.
```

```text
Use $build-vida-agents to research a strong software ecosystem for our ICP, pick one workflow, and build the proof. Include a customer demo, a Vida platform video, and the Agent Canvas landing page.
```

```text
Use $build-vida-agents to add a public-safe demo video and launch assets to this existing Agent. Do not change its live configuration.
```

## Operating model

The skill follows a proof-first sequence:

```text
intake and authorization
  → target and workflow contract
  → credible demo environment
  → browser evidence and helpers
  → Agent configuration
  → representative end-to-end test
  → optional Canvas, video, and launch assets
  → completion dossier
```

Mutating or external actions stay separately authorized. Agent publication, customer communication, paid signup, real-data changes, schedule activation, and public content publication are never inferred from a general request to build.

## Run artifacts

Initialize a non-secret record for a new build:

```bash
python3 scripts/init_run.py quote-follow-up --title "Quote Follow-Up Agent"
```

This creates a run manifest, evidence ledger, and work log under `agent-builds/<slug>/`. That directory is intentionally ignored by Git because it may contain customer-specific evidence and generated media.

## Repository layout

```text
SKILL.md                         Skill entry point and routing
agents/openai.yaml               Codex UI metadata
references/intake-and-access.md  Intake, credentials, browser handoff, approvals
references/discovery.md          Optional ICP, BuiltWith, and opportunity selection
references/build-and-validation.md
                                 Agent, helper, schedule, and acceptance workflow
references/content-and-launch.md Video, Canvas, brand, and launch-content workflow
assets/                          Reusable non-secret run templates
scripts/init_run.py              Deterministic run-record initializer
```

## Validate changes

Use the validator distributed with Codex's `skill-creator` skill:

```bash
python3 /path/to/skill-creator/scripts/quick_validate.py .
```

Then smoke-test the initializer in a temporary directory and review the package for secrets, customer data, internal URLs, and stale product assumptions.

See [CONTRIBUTING.md](./CONTRIBUTING.md) for the quality and safety bar.
