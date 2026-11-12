---
name: voice
description: The author's voice, style, editorial identity, channel profiles, and accumulated content lessons for Shortrib Labs writing. Use before drafting, revising, or reviewing anything published under the author's name (blog posts, LinkedIn, Bluesky, X), when choosing a channel for an idea, or when another skill says to load the voice files.
---

# Voice

The reference set every other skill in this marketplace reads. It holds no
procedure of its own. It tells you which file answers which question.

## Which file to open

| Question | File |
|---|---|
| How does the author sound? Register, voice DNA, hook patterns, anti-patterns, how to handle transcript roughness | [references/voice-guide.md](references/voice-guide.md) |
| House rules for the text: titles, length, formatting, links, numbers, tags | [references/style-guide.md](references/style-guide.md) |
| What the author writes about and for whom; the Theme-Fit Test | [references/editorial-identity.md](references/editorial-identity.md) |
| What the author has already corrected in past drafts | [references/content-lessons.md](references/content-lessons.md) |
| Length, shape, and conventions for one channel | `references/channels/<channel>.md`: [blog](references/channels/blog.md), [linkedin](references/channels/linkedin.md), [bluesky](references/channels/bluesky.md), [x](references/channels/x.md) |

The allergy list lives with the reviewer that enforces it, in the `review`
plugin's `allergist` skill.

## Rules for using these files

1. **Drafting reads all of them.** Voice guide, style guide, content lessons,
   and the target channel's profile, every draft, every revision.
2. **The author's phrasing wins.** If the author said it a certain way in a
   transcript, that wording beats any rule in the voice or style guide. The
   one exception is the allergy list.
3. **Every lesson applies to every draft.** A lesson the author taught once is
   never relearned at their expense.
4. **Short-form is written for its channel, never cut down from a long piece.**
   Long-form follows `blog.md`.
5. **Pick a channel by shape.** Fast reaction goes to Bluesky. Builder-leader
   operator insight goes to LinkedIn. Live-discourse takes go to X. Worldview
   or proof pieces go to the blog.
6. **These files are read-only during drafting and review.** They change only
   through the `lessons` skill, with the author's approval, as a commit in this
   repository.
