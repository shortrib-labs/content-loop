---
name: drafting
description: Draft a blog post or social post from an interview transcript using only the author's own words, where every body sentence is quoted, shaped, or a bare connective, with hooks and closings mined from the transcript first. Use after an interview, or when the author hands over a transcript, voice memo, or notes and asks for a draft in their voice.
---

# Drafting

The input is a transcript of the author's own words. The output is a draft
ready for review. The interview collected the material. This skill shapes it
and never adds to it.

## The your-words rule

Every sentence in the draft body traces to the transcript. A body sentence can
be one of exactly three kinds:

1. **Quoted**: a transcript sentence verbatim, roughness and all.
2. **Shaped**: a transcript sentence tightened, split, reordered, or merged
   with a neighbor. Shaping may cut words and fix grammar that fights the
   reader. It may **not** add a claim, example, number, opinion, or image the
   author didn't say.
3. **Connective**: a few words of transition ("So.", "Then the deploy.")
   carrying no new information. If a fact-checker could check it, it isn't
   connective.

Nothing else. No invented anecdotes, no composite examples, no filling a gap
with plausible material. **A gap in the transcript is a question for the
author.** Ask it, add the answer to the transcript, then use it. Or draft
around the gap and mark it `[GAP: …]`.

Hooks and closings are the only place new prose is allowed, and only as
clearly labeled supplements.

## Before writing a word

Load the `voice` skill and read, on every draft and every revision:

- the voice guide,
- the style guide,
- the content lessons (every lesson applies),
- the profile for the target channel.

If the transcript links a research brief, read it for context. Brief prose
never enters the body.

## Procedure

1. **Read the transcript whole**, including the closing-move playback and the
   author's reaction to it.
2. **Mark the spine.** Find the story's beats in the answers: what happened,
   the decision, the cost, the unguarded position. Order them for the
   channel, not for an essay template.
3. **Mine hooks before drafting.** Collect every phrase that could open the
   piece. The closing-move candidates the author liked come first, then any
   other verbatim line with heat. Only after that may you write supplemental
   hooks, labeled as yours.
4. **Draft the body** under the your-words rule. Quote first. Shape when a
   quote doesn't serve the reader. Use connectives sparingly. Lead with the
   observation, not the caveat.
5. **Draft closing options** the same way. If the author said the ending, use it.
6. **Audit provenance.** Walk the body sentence by sentence and label each as
   quoted, shaped, or connective. Rewrite anything you can't label from the
   transcript, or cut it. This is where the your-words rule is enforced. The
   review lenses check for slop, not provenance.
7. **Hand off to review**: the `allergist`, then `taste-lens`, then
   `guardrails-lens`.

## Output

```
Draft for <channel>: <word count> words, from your transcript.

<draft body>

Hooks (pick one, or say none of these):
1. "<verbatim phrase>": your words (<question ref>)
2. "<verbatim phrase>": your words (closing playback; you liked this one)
3. "<candidate>": machine-written supplement

Closings:
1. "<phrase>": your words (<ref>)
2. "<candidate>": machine-written supplement
```

- Options from the transcript always come first and are marked **your words**
  with a reference. Machine-written options are always labeled and never
  listed first.
- Zero machine-written hooks is a fine outcome when the transcript is strong.
- Place the best transcript hook and closing in the draft so reviewers read a
  whole piece. The options let the author swap.

## Revisions

Revisions follow the same rule. Fix a problem by going back to the transcript
for better material, by reshaping, or by cutting. If the transcript can't fix
it, ask the author and add their answer to the transcript first.
