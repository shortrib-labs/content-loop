# Guardrails lens demo

A narrated walkthrough of the skill review loop on `guardrails-lens`: review it,
let `tessl review fix` improve it, review it again, open a pull request, and read
the Tessl Skill Review comment on GitHub. The sources follow the Tessl demo
factory's format (`gtm/automated-demo` in the Tessl monorepo). The rendered
video is [`docs/guardrails-lens-demo.mp4`](../../docs/guardrails-lens-demo.mp4).

| # | Scene | Source |
|---|---|---|
| 1 | `tessl review run` scores the skill | `cli-review-run.tape` |
| 2 | `tessl review fix` improves it (sped up in the edit) | `cli-review-fix.tape` |
| 3 | `tessl review run` confirms the new score | `cli-review-rerun.tape` |
| 4 | Push, open the pull request, watch the checks | `cli-open-pr.tape` |
| 5 | The Tessl Skill Review comment on the pull request | `storyboard.yml` |

Narration is in `voice-script.json`, and its timed subtitles in `subtitles.srt`.

## Recording

The terminal scenes run in VHS on Linux, as the demo factory does, inside the
container built from [`../Dockerfile`](../Dockerfile). Each tape starts tmux off
camera. VHS's `Wait` reads the terminal buffer from its top, so it never sees a
prompt that comes back after output has scrolled; tmux redraws in place, so
nothing scrolls into the buffer.

```sh
docker build -t content-loop-vhs demo
mkdir -p ~/.cache/content-loop-demo
docker run --rm -v "$PWD":/vhs -v ~/.cache/content-loop-demo:/tmp \
  -v ~/.tessl/api-credentials.json:/root/.tessl/api-credentials.json:ro \
  -w /vhs content-loop-vhs demo/guardrails-lens/cli-review-run.tape
```

Scenes 1 to 3 need Tessl credentials, mounted read-only as above. Scene 2 spends
Tessl credits and rewrites the skill, so restore `SKILL.md` before another take.
Scene 4 pushes and opens a pull request; it also needs `-e GH_TOKEN` and the
committer's `GIT_AUTHOR_*` and `GIT_COMMITTER_*` variables. Keep every credential
out of the repository and off the screen.

Scene 5 runs on the host with shot-scraper and a signed-in GitHub session saved
outside the repository (`shot-scraper auth https://github.com/login <file>`).
Replace `PR_NUMBER` in `storyboard.yml` first.

Narration is synthesized with Kokoro TTS, each scene is held on its last frame
until its narration ends, and the scenes are stitched in the order above, as the
demo factory's render pipeline does.
