---
name: humanizer
description: |
  Edit text to remove tells of AI authorship (staged openers, forced triads, inflated significance, stock AI vocabulary, decorative bold/dashes) while changing nothing it actually claims — for polishing the user's own writing (bios, pitches, cover letters, docs), not for disguising someone else's work or evading academic/authenticity checks. Adapted 2026-09-08 from `blader/humanizer` (MIT-licensed, verified plain-markdown skill, no `allowed-tools`, based on Wikipedia's "Signs of AI writing") — read and re-authored in this project's own words rather than installed via `npx skills add`, consistent with this project's standing rule against running third-party skill-install commands.

  Use when: "вычисти текст", "сделай текст более живым/человеческим", "убери ИИ-штампы", "звучит как ИИ написал", or polishing a piece of the user's own writing before it goes out.
---

# Humanizer

Source idea verified real and safe (MIT license, no elevated tool permissions) — re-implemented here in original wording rather than run via its own install script, per this project's rule against executing untrusted `npx skills add ...` commands regardless of how safe a given skill looks on inspection.

## Scope check first

This is for **the user's own writing** — a bio, pitch, cover letter, internal doc — where the actual claims are already true and only the prose needs to stop sounding machine-generated. It is not for laundering someone else's AI output as human-written, evading a plagiarism/AI-detector on work that isn't the user's, or making deceptive content (fake reviews, impersonation) read as authentic. If asked to "humanize" text where authorship or authenticity is actually in question, say so rather than proceeding.

## Workflow

1. **Read the whole piece once before touching anything** — the tells that matter most repeat across paragraphs, not within one sentence.
2. **Rewrite, don't just trim.** Restructure, merge, or shorten as needed — but never add a fact, number, name, date, or claim that wasn't already there, and never drop one that was.
3. **Read the result aloud (mentally).** If a sentence wouldn't survive being said out loud in that shape, it's probably still staged.
4. **Keep whatever was already genuinely specific** — real numbers, an unusual detail, a first-person aside, an opinion with reasoning behind it. Those are the opposite of an AI tell; don't sand them down along with everything else.

## What actually reads as AI-written (fix these)

- **Hollow contrast framing** — "not just X, but Y" used for rhetorical weight rather than correcting a real misconception. State the point once, directly.
- **A one-line paragraph that just restates the point above it** ("That's the real win.") — cut it, or fold the actual content into the paragraph it's restating.
- **Fake-profound one-liners** — "at its core," "X is the Y of Z" — dressing an ordinary point up as an aphorism. Say the ordinary point.
- **Announcing before saying** — "let's dive in," "here's what you need to know" — delete the announcement, start with the actual content.
- **Arguing with an objection nobody raised** — cut unless the text is actually responding to a stated alternative.
- **Groups of exactly three for no reason** — if the third item doesn't add real information, it's padding; merge or drop it.
- **Every sentence in a paragraph starting the same way** — vary the subject, or open with the action instead.
- **Em dashes standing in for a period, comma, or colon everywhere** — use whichever punctuation the sentence actually calls for.
- **Stacked hedges** ("could potentially possibly") — one honest hedge is human; three stacked ones is a tell.
- **Stock AI vocabulary**: additionally, robust, landscape, tapestry, testament, enduring, pivotal, meticulous, nestled, vibrant, breathtaking, renowned — these appear far more often in model output than in how people actually write; replace with the concrete fact they're standing in for.
- **Calling an ordinary detail "pivotal" or a "lasting legacy"** — keep the fact, drop the significance-inflation language around it.
- **"Serves as," "boasts," "features"** standing in for a plain "is/has" — use the direct verb.
- **Bold text or labeled bullet headers with no functional reason** — if a label adds nothing a plain sentence wouldn't, write the sentence instead.
- **Chatbot leftovers** — "Great question!", "I hope this helps" — strip the wrapper, keep only the content.

## Voice matching

If the user gives a writing sample of their own, match its sentence length, word choice, and punctuation habits over these rules — a real personal quirk (e.g. someone who genuinely writes in short dash-joined fragments) beats a generic "fix." Without a sample: a personal/opinion piece keeps first-person asides and mild uncertainty; a technical or reference piece stays plain and neutral either way.

## Guardrail

Every rewritten sentence should earn its place. If a pass leaves the piece saying anything factually different from the original — a number changed, a claim added or softened, a name introduced — that's a bug in the edit, not an improvement; go back and fix the specific sentence rather than accepting the drift.
