# content-loop

The writing loop that worked by hand, packaged as Claude Code skills:
**mirror → interview → draft → review**, with the author's voice files
underneath and a small lessons loop that grows them.

This is what survived from `shortrib-labs/content-machine`. The scheduled
engines, scoring, Slack mechanics, and auto-publishing are gone.

## Plugins

| Plugin | Skills | What it does |
|---|---|---|
| `voice` | `voice`, `lessons` | Voice guide, style guide, editorial identity, channel profiles, content lessons. `lessons` compares what you published against the draft and proposes new lessons and allergy entries. |
| `mirror` | `mirror` | Reads 90 days of daily notes, one hop of links (calls read with speaker awareness), and Readwise; clusters by the underlying question; remembers past runs so returning themes stand out; flags matching unpublished drafts. |
| `drafting` | `research`, `interview`, `drafting` | Optional brief, then the six-persona interview that turns beliefs into stories, then a draft built only from your words. |
| `review` | `allergist`, `taste-lens`, `guardrails-lens` | Review lenses that flag without scoring. The allergist owns the allergy list. |

## Install

```
/plugin marketplace add shortrib-labs/content-loop
/plugin install voice@content-loop
/plugin install mirror@content-loop
/plugin install drafting@content-loop
/plugin install review@content-loop
```

## Skill reviews

Every PR that touches a `SKILL.md` gets a Tessl skill review
(`.github/workflows/skill-review.yml`) against the Shortrib Labs org. The
results show up as a PR comment and under **Assessments** in Tessl. Nothing
is published to the Tessl registry.

To raise a low score:

```
tessl review fix plugins/<plugin>/skills/<skill> --workspace shortrib-labs
```

`fail-threshold` is 0 while the baseline settles. Raise it to gate merges.

[`docs/tessl-skill-review.pdf`](docs/tessl-skill-review.pdf) is a one-page
guide to setting this up, and
[`docs/guardrails-lens-demo.mp4`](docs/guardrails-lens-demo.mp4) shows the
loop end to end on `guardrails-lens`.

## License and disclosures

MIT. See [LICENSE](LICENSE).

- **Adapted work.** `guardrails-lens` is adapted from the `guardrails` skill
  in Katie Parrott's [draft-review-kit](https://github.com/EveryInc/draft-review-kit)
  (MIT). Her notice ships with the plugin in
  [`plugins/review/NOTICE.md`](plugins/review/NOTICE.md).
- **Interview personas.** The six interviewers in `interview` (Studs Terkel,
  Adam Gordon Bell, Ezra Klein, Howard Stern, Terry Gross, Jad Abumrad) are
  characterizations drawn from their public work. None of them is affiliated
  with or endorses this project.
- **Voice files.** The `voice` plugin describes my writing voice. It was
  derived from my published essays and from my own side of work calls. The
  quotes in it are mine.
- **AI assistance.** These skills were written and are maintained with
  Claude Code.
- **Employer.** I work at Tessl, and this repository uses Tessl's skill
  review. It's a personal Shortrib Labs project, not a Tessl product.
