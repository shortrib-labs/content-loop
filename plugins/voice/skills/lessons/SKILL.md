---
name: lessons
description: Compare a published piece against the draft it started from and propose new content lessons and allergy-list entries for the author to approve. Use by hand after publishing something that began as a machine draft, or when the author catches an AI-ism or a correction they never want to make again.
---

# Lessons

A small, hand-run loop. You give it what you published and the draft it came
from. It finds what you changed, sorts the changes into lessons and allergies,
and proposes entries. Nothing lands until you approve it.

## Inputs

Ask for whichever of these are missing:

- **The draft**: what the drafting skill produced, before your edits.
- **The published version**: what actually went out (a URL, a file, or pasted text).
- **Optional:** a phrase you caught and want to ban, even without a draft pair.

## Procedure

1. **Diff by meaning, not by characters.** Walk the two versions side by side
   and list each change you made: a cut, a rewrite, a reordering, a new
   sentence. Ignore typo fixes and link swaps.
2. **Drop the one-offs.** A change counts only when it shows a habit the
   draft would repeat. "This fact was wrong" is a one-off. "The draft opened
   on a thesis instead of a moment" is a habit.
3. **Sort each habit into one of two buckets:**
   - **Allergy**: a construction, word, or mechanical tic you cut on sight,
     regardless of context. It belongs in the `allergist` skill's
     `references/allergy-list.md`.
   - **Lesson**: a judgment call about tone, structure, vocabulary, hooks,
     or evidence. It belongs in the `voice` skill's
     `references/content-lessons.md`.
4. **Check for duplicates.** Read both files first. If an existing entry
   already covers the habit, propose sharpening that entry instead of adding
   a near-copy.
5. **Draft each proposal in the file's own format.**
   - Allergy: next free `A<N>`, short name, one-line definition, and the
     caught example verbatim.
   - Lesson: next free `L<N>`, category, the lesson as a rule, and a `Taught:`
     line with today's date and the correction that taught it.
6. **Show the proposals and wait.** List each one with the before/after
   evidence that earned it. Ask the author to approve, edit, or reject each
   entry.
7. **Apply only what was approved**, on a branch, as one commit per proposal
   batch. Open a PR. Rejected proposals change nothing and are not saved.

## Rules

- Never edit the voice guide or style guide from here. They change when the
  author rewrites them, not through this loop.
- Never invent the example. Every proposal quotes text from the draft or from
  the author's catch.
- Two to four proposals per run is typical. Zero is a fine answer when the
  edits were all one-offs. Say so and stop.
