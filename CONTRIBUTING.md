# Contributing

Contributions should make the skill more reliable across real Vida Agent builds without turning one customer's workflow into a universal rule.

## Before opening a pull request

1. Keep `SKILL.md` focused on routing, invariants, and completion criteria. Put conditional detail in the relevant file under `references/`.
2. Preserve user authorization boundaries. Never imply permission to spend money, contact customers, mutate real data, publish an Agent, activate a schedule, or publish content.
3. Do not commit credentials, browser tickets, customer data, recordings, generated media, account IDs, private hosts, or per-run artifacts.
4. Use only public Vida API contracts in the skill. Keep exact endpoint mechanics in the `vida-api` dependency rather than duplicating them here.
5. Add a deterministic script only when it removes repeated error-prone work, and execute it against an isolated temporary directory.
6. Validate the complete skill with Codex's `skill-creator/scripts/quick_validate.py`.
7. Test meaningful behavior and observable outcomes. Avoid brittle tests that merely assert prose or heading text.

When a real build exposes a rough edge, record the evidence and classify it before changing the skill: skill guidance, Vida API schema/docs, runtime behavior, Browser Harness, or agent process. Prefer the narrowest correction supported by that evidence.
