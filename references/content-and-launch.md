# Content and Launch

Read this reference only when the user selected Canvas, landing pages, videos, or written launch content.

## Content brief

Create separate briefs for separate audiences. Do not force one video or page to serve every purpose.

### Customer/use-case proof

Sell one workflow to one target buyer:

- exact stuck work and business cost;
- records the Agent selects;
- bounded actions and safeguards;
- one believable interaction or decision;
- verified source-system outcome;
- concise cross-software Vida bridge;
- approved CTA.

Exclude build-process details such as BuiltWith, helper authoring, or the landing page itself unless they matter to that buyer. Do not show the Canvas inside a customer video that is already embedded on that Canvas.

### Vida platform/build story

Show the reusable factory:

- optional market/ICP signal;
- credible seeded software environment;
- Browser recording and helpers;
- Vida Agent, Computer, voice, guardrails, and schedule;
- representative conversation and verified writeback;
- Canvas/landing page and reusable launch assets.

Use the target workflow as evidence of platform power, not as a generic AI montage.

## Publication-quality source capture

- Seed and visually approve the target-software account first.
- Storyboard proof beats before recording.
- Capture a rehearsed publication take separately from technical helper evidence when useful.
- Show meaningful navigation, filtering, scrolling, record selection, action, save/submit, and visible result.
- Remove or compress dead time and loading. Do not leave an unchanged product frame under a long narration passage.
- Avoid continuous fractional zoom/pan effects that create jitter. Use stable frames, intentional cuts, and smooth short opacity transitions.
- Blur/redact operator names, real contacts, phone numbers, emails, addresses, credentials, account/room/Task IDs, vehicle/VIN identifiers, person-linked financial figures, salesperson identity, and unrelated customer information even when the main fixture is synthetic.

For real-customer source material, use this privacy order:

1. exclude the sensitive screen or choose a safer proof view;
2. crop away browser chrome, account switchers, Inbox lists, headers, and unrelated panels;
3. replace sensitive fields with a consistent neutral privacy treatment that covers the complete field or region;
4. use strong tracked defocus only for surrounding context that must remain visible.

Do not rely on a small name blur while related phone, address, VIN, payment, equity, or operator data remains visible. Raw blur can also inherit bright source colors and look like a rendering defect; prefer a neutral branded mask for fixed sensitive fields. Do not place isolated unexplained boxes over browser tabs or headers—crop those regions out. Track masks across motion, review scene boundaries and dense contact sheets at full resolution, and search every export for known identities and identifiers. Keep unredacted captures private and label only reviewed derivatives public-safe.

## Vida visual system

Inspect the current public `vida.io` site at production time. Preserve a brand-source manifest with the exact logo asset, typeface, colors, spacing, button treatment, and relevant motion cues.

Use Vida branding, Vida logos, `partners@vida.io`, and Vida-specific calls to action only for Vida-owned content or explicitly approved partner/customer co-marketing. Otherwise use the user's authorized brand system, assets, contact destination, and CTA; never imply Vida endorsement or publish apparently official Vida collateral.

- Use a 4-point spacing grid.
- Maintain at least 20 points between major authored elements.
- Prefer spacious typography and measured rules over decorative bubbles/pills.
- Ensure backgrounds/cards fully contain text with safe padding.
- Check alignment and overflow at full resolution in every independently composed aspect ratio.
- Do not center-crop a horizontal master to create vertical social output.

Treat every marker/icon plus label as one layout component, not as independently positioned shapes:

- Define one row box and derive both the marker and label position from it. Do not hard-code separate marker and text Y coordinates.
- For a single-line label, align the marker's optical center to the visible glyph bounding box center within 2 pixels at final master resolution. For a multiline label, align it to the first line's visible cap-height center unless the design explicitly uses another documented anchor.
- Do not assume a text renderer's requested Y coordinate is the visible glyph top or center. ImageMagick `-annotate`, FFmpeg `drawtext`, SVG, Canvas, and browser text all apply font metrics differently. Measure the rendered label or use a flex/grid row with explicit center alignment, then place the marker from that measured result.
- Generate a layout-debug still with row bounds and centerlines before rendering the complete video. Inspect a full-resolution crop of every repeated marker/list variant; a contact sheet scaled down to overview size is not sufficient alignment evidence.

## Narration

For Vida marketing/demo video, default to ElevenLabs `eleven_v3` unless the user specifies another model or voice. Default voice is Liz (`uMM5TEnpKKgD758knVJO`) unless the user/customer chooses differently.

Use v3 as a directed performance system:

- write target-specific marketing copy first;
- use purposeful delivery tags, punctuation, paragraph structure, and pronunciation controls;
- generate multiple complete takes rather than stitching scene-level requests;
- keep stability in the expressive Natural range unless testing proves another mode is better;
- preserve request, model, voice ID, settings, seed, audio, and alignment response;
- verify the spoken script with transcription and correct brand/product pronunciation using native v3 IPA when needed;
- select a whole take based on human review when available, plus duration, pauses, dynamics, script fidelity, and artifacts;
- derive scene timing from returned character timestamps.

Avoid over-tagging or theatrical effects that conflict with professional product narration. If text-to-speech cannot meet the quality bar, record a human guide performance and use ElevenLabs Voice Changer/Actor Mode when authorized.

Always export a version with no TTS/audio stream so the user can record or replace narration.

## Video requirements

- Default teaser runtime: 30–45 seconds; never exceed 45 seconds without user approval.
- Use fewer scenes with enough dwell to understand each proof point.
- Customer copy must be specific to the workflow and economic problem.
- Include one accurate sentence that Vida can automate comparable workflows in other browser-accessible software.
- For Vida demand-generation content, canonical CTA: `Talk to Vida about deploying an agent like this for your business.` Never insert an article before `Vida`; `Talk to the Vida` is incorrect brand copy.
- Default contact email for Vida marketing: `partners@vida.io`, unless the user supplies another destination.
- Preserve narrated and silent masters, scripts, captions, storyboard, selected take, source recordings, render source, contact sheets, and production manifest.
- Normalize final narration near -16 LUFS with a safe true-peak ceiling, then decode and inspect every export.

Treat approved CTA copy as a locked production value, not prose to regenerate independently. Store it once in the video configuration and derive the spoken script, end card, captions, metadata, and manifest from that value. Before TTS/rendering and again before delivery, run `scripts/validate-video-copy.sh <video-source-directory>` (or pass `--cta` for a user-approved custom CTA). The validator must pass, and the final full-resolution end frame plus decoded narration must match the same approved copy. Do not rely only on a contact-sheet glance or a general instruction to check CTA wording.

QA every master for duration, dimensions, frame rate, codecs, audio-stream presence/absence, loudness, true peak, black frames, legibility, alignment, pacing, redaction, claim accuracy, and CTA wording. Alignment QA must include measured full-resolution crops of repeated components such as bullets, icons, labels, cards, and captions—not only visual review of a downscaled contact sheet. For real-customer footage, inspect representative full-resolution frames from every scene plus a dense contact sheet; a small overview image alone is not a privacy review.

## Agent Canvas / landing page

Use the target Agent's Canvas app, not a detached local page, unless the user asked only for a design prototype.

1. Read Canvas state and the existing `app/` scaffold.
2. Edit authored source and place supported delivery assets under `app/public/`.
3. Keep credentials and privileged operations out of browser-delivered code.
4. Publish through the purpose-built Canvas API and require successful dependency/build phases.
5. Re-read Canvas and open the returned public URL or private launch reference.
6. Verify the deployed page, CTA, responsive layout, and actual media playback in a public Vida-issued Browser session.

The page should communicate the target buyer, problem, outcome, proof, workflow boundaries, and CTA. Include truthful non-affiliation or demonstration disclosures where needed.

## Written derivatives

Derive social threads, blog drafts, seller briefs, and landing copy from the structured work log and verified evidence—not from generic claims.

Capture reusable moments during the build:

- selection insight;
- target-software before state;
- Browser/helper proof;
- Agent configuration;
- test conversation;
- source writeback;
- Canvas/launch package;
- lesson or API improvement.

Do not publish externally without explicit approval. Mark drafts, approved assets, and published assets distinctly in the run manifest.
