# Tmux

## My tmux notes

To install `tpm` tmux plugin manager:

```shell
./install-tpm.sh
```

### Prefix

- Prefix default: `C-b`. Mapped to: `C-a`
- Hot reload (configuration): `Prefix r`

### Session

- New session: `tmux new -s <SESSION_NAME>`; `:new -s <SESSION_NAME>`
- Leave session: `tmux detach`
- List sessions: `tmux ls`; `Prefix s`
- Back to specific session: `tmux attach -t <SESSION_NAME>`
- List sessions from within session: `PREFIX s`

### Window

- New window: `Prefix c`
- Rename window: `Prefix ,`
- Go to window: `Prefix <WINDOW_NUMBER>`
- Previous window: `Prefix p`
- Next window: `Prefix n`
- Show windows: `Prefix w`

### Pane

- New horizontal pane default: `Prefix "`. Mapped to: `Prefix |`
- New vertical pane default: `Prefix %`. Mapped to: `Prefix -`
- Swap panes: `Prefix x`
- Zoom (toggle) pane: `Prefix z`
- Move to other pane: `Prefix <ARROW_KEY>`

### Vim motion

- Enter in copy mode: `Prefix [`
- Exit copy mode: `ctrl c`
