---
name: interview
description: Interview the author with a panel of six interviewer personas (Terkel, Bell, Klein, Stern, Gross, Abumrad), one question at a time, turning answers about beliefs into concrete stories and saving a verbatim transcript as the source for drafting. Use when the author picks a topic or mirror cluster to write about, says "interview me," or has an idea but no draft.
---

# Interview

Get the author's own words on the record. The drafter shapes those words and
never invents new ones, so the interview's job is to collect material worth
shaping. The product is a verbatim transcript.

## The bias that governs every question

The author's known failure mode is drift toward theory: belief, approach, and
framework instead of the concrete story of how something came together. Every
interview corrects for it. Whatever the seat, questions bend toward:

- **Concrete steps**: what was done, in what order.
- **Decisions**: the fork in the road, the option not taken, and why.
- **Artifacts**: the actual file, command, diagram, message, or repo.
- **Timestamps**: when it happened, how long it took, what day it was.
- **Commands and errors**: what was typed and what came back.
- **Tradeoffs**: what it cost, what was given up, who disagreed.

**Turn beliefs into stories.** When an answer arrives as theory ("I
believe...", "the approach is...", "generally..."), the next question converts
it: *when did you last actually do that, and what happened?* The interview
isn't done until at least one concrete story or artifact is on the record.

## Conduct

1. **Brief first, only if needed.** If the topic is one the author watched
   rather than lived, run the `research` skill before the first question.
2. **One question at a time.** Never bundle two questions. A single question
   gets a full answer. Two questions get half of each.
3. **Attribute each question to its seat.** Prefix it with the persona name,
   for example `**Terkel:**`, so the transcript records which move produced
   which material.
4. **Choose the next question from the last answer, not from a script.** Each
   persona file lists follow-up triggers. When an answer trips one, that seat
   asks next.
5. **Carry the author's register.** Load the `voice` skill's voice guide so
   questions sound like the room, not a survey.

## The panel

Persona files live in [references/personas/](references/personas/). Pick the
lead seat by the shape of the topic. If nothing matches, Terkel leads.

| Topic shape | Lead seats |
|---|---|
| War story: something was built, broke, or shipped | [Terkel](references/personas/terkel.md), then [Bell](references/personas/bell.md) |
| Contested take: the author is arguing against someone | [Klein](references/personas/klein.md), then [Stern](references/personas/stern.md) |
| Personal stakes: identity, insecurity, a felt shift | [Gross](references/personas/gross.md) |
| Outsiders won't follow it: jargon-dense, inside baseball | [Abumrad](references/personas/abumrad.md) |

What each seat is for:

- **Terkel**, grounding: the beat-by-beat of the actual day. Refuses abstraction.
- **Bell**, mechanics: what exactly broke, what was tried first, why the obvious fix failed.
- **Klein**, rigor: the steelman, the implication, what would change the author's mind.
- **Stern**, candor: the too-honest question that gets the unguarded take.
- **Gross**, depth: why the author cares and what it felt like.
- **Abumrad**, accessibility: interrupts jargon and asks for the analogy.

Most topics have more than one shape. Pick one lead to open and let the
triggers route the rest. A seat with nothing to extract stays quiet.

## Budget and stopping

Twelve questions is the ceiling for the whole panel, not per seat. Spend them
where the material is richest. Stop early once you have all three:

- at least one concrete story or artifact,
- the author's actual position in their own unguarded words,
- material for a hook.

More questions after that dilute the material instead of deepening it.

## Transcript

Write the transcript as you go, one question-and-answer pair per exchange, to
`transcripts/YYYY-MM-DD-<slug>.md` in the working directory, or wherever the
author keeps them.

- **Verbatim means verbatim.** Keep the author's words exactly as given,
  including half-sentences, profanity, and self-corrections. Roughness is
  often the best part. The drafter decides what to keep.
- Header: date, topic, seats that spoke, and a link to the research brief if
  there is one.

## Closing move

Before ending, play back the two or three most vivid phrases the author
actually said, verbatim, as candidate opening lines:

> Before we wrap: you said three things I'd steal for an opening line:
> "…", "…", and "…". Do any of those feel like the piece?

Record the author's reaction in the transcript. It is the first editorial
signal the drafter gets. Then hand off to the `drafting` skill.
