---
name: guardrails-lens
description: "Argument check first: scan a draft in three passes for argument problems (straw men, false binaries, AI determinism, stakes inflation), then clarity and evidence gaps, then structural mechanics, logging each finding with location, verbatim line, diagnosis, and suggested fix. Flags, never scores. Use when the user asks to review, fact-check, tighten, or edit a draft before publishing — 'review my writing', 'edit my essay', 'argument check'. Runs as the last review lens on a draft, after the allergist and taste-lens."
---

# Guardrails lens

The substantive editorial layer. It runs third, after the `allergist` and
`taste-lens`, and produces a findings report. It flags and never rewrites the
whole draft. The drafter fixes each finding under the your-words rule.

## Not this lens's job

The allergist owns its allergy list (reversals, redirects, fortune-cookie
closes, pseudo-Q&A, "Maybe" anaphora, the lexicon, unsourced numbers). The
taste lens owns hedges, filler, and word-level style. A survivor from either
means that lens missed it. Send the draft back instead of duplicating the flag.

## Pass 1: Clarity and evidence

- **Missing why or so-what.** A claim that leaves the reader to infer the
  mechanism or stakes. Put the reason on the same beat as the claim.
- **Missing specifics.** A load-bearing abstraction with no instance, or a
  number with no comparison. One example per abstraction, one anchor per
  number.
- **Unidentified people, companies, or terms.** Gloss them on first mention.
- **Attribution gaps.** Claims and quotes with no source. Attribute them, or
  narrow the claim to the author's own experience, which is usually available
  and stronger.
- **Placeholders shipped forward**: `TK`, `[link]`, `[GAP: …]`, half-filled
  templates.
- **Jargon without translation.** Define it on first use or say it plainly.
- **Tool instead of category.** Lead with the kind of tool. Name the product
  only when its identity matters.
- **Muddy connective logic.** Items grouped with the relationship left unstated.

## Pass 2: Argument

- **Straw man.** The opposing view stated weaker than its holders state it.
  The interview's Klein seat usually captured the real version. Use it.
- **False binary.** Two options where the reader can name a third.
- **AI determinism.** "AI will inevitably..." Claim what the author has seen
  tools do, not what tools will decide.
- **False universality.** "Everyone knows," "every team eventually." Scope it
  to the cases observed.
- **Technical intimidation.** Complexity used to win rather than explain.
- **Stakes inflation.** Urgency escalated past what the story supports.

## Pass 3: Structure

- **Meandering intro.** The piece circles before it lands.
- **Sentimental conclusion.** An ending that swells into unearned uplift. End
  on the last real thing.
- **Metaphor without payoff.** An image introduced and abandoned, or
  stretched past what it can carry.

## Logging

Make three full passes, one per category. For each finding, record the check
name, location, the offending line verbatim, a one-sentence diagnosis, and a
suggested fix.

A recurring failure with no home in this lens or the allergy list goes under
**Watch-items** at the bottom. Hand watch-items to the `lessons` skill. Never
edit this file or the allergy list from here.

## Report

Lead with the findings and skip the preamble.

> Guardrails: clean. Watch-items: none.

> Guardrails: 2 flags.
>
> **Clarity/evidence**
> - Missing so-what (¶3): "We moved the queue to its own node pool." The reader can't tell why this was the hard call. Fix: one sentence on what staying put was costing.
>
> **Argument**
> - False universality (¶7): "every platform team ends up here." Scope it to the teams you watched.
>
> Watch-items: none

With 10 or more findings, skip the full list. Summarize the counts and top
three patterns, and recommend a structural revision before any line edits.
