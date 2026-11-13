# The recording environment for the demos in this directory: VHS on Linux,
# like the Tessl demo factory, plus the Tessl CLI, tmux, git, gh, and the
# brand font. Build it once from the repository root:
#   docker build -t content-loop-vhs demo
FROM ghcr.io/charmbracelet/vhs:v0.12.1

# tmux mangles non-ASCII output (arrows, check marks, spinners) without a
# UTF-8 locale.
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8

RUN apt-get update -qq \
 && apt-get install -y -qq curl ca-certificates tmux git gh fonts-dejavu-core fonts-jetbrains-mono >/dev/null \
 && rm -rf /var/lib/apt/lists/*

ARG TESSL_VERSION=0.119.0
ARG TARGETARCH
RUN case "$TARGETARCH" in arm64) A=linux-arm64 ;; *) A=linux-x64 ;; esac \
 && curl -fsSL "https://install.tessl.io/binaries/${TESSL_VERSION}/tessl-${TESSL_VERSION}-${A}.tar.gz" \
    | tar -xz -C /tmp \
 && install -m 0755 "/tmp/tessl-${TESSL_VERSION}-${A}" /usr/local/bin/tessl \
 && rm -f /tmp/tessl-*

# Atkinson Hyperlegible Mono, the mono sibling of Tessl's brand typeface.
RUN mkdir -p /usr/share/fonts/truetype/atkinson \
 && for f in 'AtkinsonHyperlegibleMono%5Bwght%5D.ttf' 'AtkinsonHyperlegibleMono-Italic%5Bwght%5D.ttf'; do \
      curl -fsSL -o "/usr/share/fonts/truetype/atkinson/$(echo "$f" | sed 's/%5B/[/; s/%5D/]/')" \
        "https://github.com/google/fonts/raw/main/ofl/atkinsonhyperlegiblemono/$f"; \
    done \
 && fc-cache -f >/dev/null

RUN printf 'set -g status off\nset -g default-terminal "xterm-256color"\nset -ga terminal-overrides ",xterm-256color:Tc"\n' > /root/.tmux.conf
