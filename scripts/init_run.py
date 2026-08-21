#!/usr/bin/env python3
"""Initialize a non-secret artifact record for one Vida Agent build."""

from __future__ import annotations

import argparse
import datetime as dt
import re
from pathlib import Path


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser()
    parser.add_argument("slug", help="lowercase run slug, for example quote-follow-up")
    parser.add_argument("--root", default="agent-builds", help="parent artifact directory")
    parser.add_argument("--title", help="human-readable run title")
    return parser.parse_args()


def main() -> int:
    args = parse_args()
    if not re.fullmatch(r"[a-z0-9]+(?:-[a-z0-9]+)*", args.slug) or len(args.slug) > 64:
        raise SystemExit("slug must be <=64 characters using lowercase letters, digits, and hyphens")

    output = Path(args.root).expanduser().resolve() / args.slug
    if output.exists():
        raise SystemExit(f"refusing to overwrite existing run directory: {output}")

    title = args.title or args.slug.replace("-", " ").title()
    created_at = dt.datetime.now(dt.timezone.utc).replace(microsecond=0).isoformat()
    assets = Path(__file__).resolve().parent.parent / "assets"
    templates = {
        "run-manifest-template.md": "run-manifest.md",
        "evidence-ledger-template.md": "evidence-ledger.md",
        "work-log-template.md": "work-log.md",
    }

    output.mkdir(parents=True)
    replacements = {
        "{{RUN_SLUG}}": args.slug,
        "{{TITLE}}": title,
        "{{CREATED_AT}}": created_at,
    }
    for source_name, destination_name in templates.items():
        content = (assets / source_name).read_text(encoding="utf-8")
        for old, new in replacements.items():
            content = content.replace(old, new)
        (output / destination_name).write_text(content, encoding="utf-8")

    print(output)
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
