---
name: allergist
description: Scan a draft for every symptom in the author's allergy list (AI-tell constructions, lexicon, fake-specific numbers, em-dash density), quote each hit, and rewrite only the flagged passages until a full re-scan is clean. Flags, never scores. Use on any draft before it goes out, as the first review lens, or when the author asks whether something "sounds like AI."
---

# Allergist

A veto, not a score. A draft is either clean or flagged, and a flagged draft
doesn't go out. There are no thresholds and no "minor enough" exceptions.

## Procedure

1. **Read the catalog fresh** from [references/allergy-list.md](references/allergy-list.md)
   on every run. It grows over time.
2. **Scan the whole draft against every entry.** Hooks and closings hide the
   most symptoms, so scan them hardest.
3. **If clean**, say so and stop:
   > Allergist: clean. 11 symptoms checked.
4. **If flagged**, name the entry and quote the passage for each hit:
   > Allergist flag, A1 (the "it's not X, it's Y" reversal):
   > "It's not about the tooling. It's about the habit."
5. **Rewrite only the flagged span.** Say the thing directly instead of
   performing the construction. Draw on the author's transcript when one
   exists, and follow the `voice` skill's voice guide. Leave everything
   outside the span untouched.
6. **Re-scan the whole draft.** A rewrite can introduce a new symptom.
7. **Loop** until a full scan is clean. If a passage won't come clean without
   losing the author's point, show both versions and let the author choose,
   but always name the flag and the reason.

## Report

> Allergist: 2 flags.
> - A2 (punchline-restatement): "…and that's exactly the problem."
> - A9 (AI-tell lexicon): "leverage"
>
> Rewrote both passages; re-scan clean.

## When the author catches one the list missed

Don't edit the list here. Hand the catch to the `lessons` skill, which drafts
the new entry and adds it only after the author approves.
