# cli-review-run: one CLI scene of the guardrails-lens demo, in the demo factory's tape
# format (gtm/automated-demo/scripts/modules/tape.ts). Run from the repo root;
# the recording lands in /tmp, outside the repository.
Output "/tmp/cli-review-run.webm"
Set Shell "bash"
Set Width 1280
Set Height 800
Set FontFamily "Atkinson Hyperlegible Mono, JetBrains Mono, monospace"
Set FontSize 22
Set Padding 40
Set TypingSpeed 50ms
Set Theme {"name": "Tessl Dark", "background": "#0b0d0c", "foreground": "#d6dcd9", "cursor": "#4cc282", "selection": "#2a312e", "black": "#0b0d0c", "red": "#e5484d", "green": "#4cc282", "yellow": "#f5b301", "blue": "#6ea8fe", "magenta": "#c084fc", "cyan": "#5fd4d0", "white": "#d6dcd9", "brightBlack": "#6b7570", "brightRed": "#ff6b6f", "brightGreen": "#6fdb9f", "brightYellow": "#ffc933", "brightBlue": "#93bfff", "brightMagenta": "#d4a5ff", "brightCyan": "#86e3df", "brightWhite": "#ffffff"}

Hide
Type "tmux new -s demo"
Enter
Sleep 1s
Type "export PS1='> ' && clear"
Enter
Show

Sleep 1s
Type "tessl review run quality plugins/review/skills/guardrails-lens -w shortrib-labs"
Sleep 500ms
Enter
Wait+Line@600s /^>\s*$/
Sleep 5s
