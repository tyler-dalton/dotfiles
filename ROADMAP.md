# Dotfiles Roadmap

Personal backlog for the Kubuntu / KDE Plasma workstation. This is a working list, not a commitment to implement everything. Prefer finishing and testing the daily environment before building a full bootstrap.

## Now — daily workflows

- [ ] **LazyVim: make Lua editing reliable.** Check Lua language server, Neovim API annotations, diagnostics, formatting (StyLua), completion ranking and keybindings. Learn how to dismiss/accept suggestions; refine editor UX before making Neovim the default. **Keep VS Code as default for now.**
- [ ] **Clipboard workflow.** Explore KDE/Wayland clipboard history, searchable shortcut, and optional copy/paste automation. Define behavior before choosing tools; avoid accidentally retaining secrets.
- [ ] **Cheat workflow.** Refresh outdated cheatsheets; build a `cheat` entry point that can discover aliases, shell functions and personal notes, ideally searchable with fzf.
- [ ] **SSH-aware Starship prompt.** Explore a clearly identifiable remote-host prompt, possibly via SSH environment detection or remote Starship config. Remember the prompt normally runs on the remote host.
- [ ] **Shortcut system.** Establish consistent, non-conflicting keyboard shortcut conventions across KDE, Ghostty, fzf, LazyVim and apps; record and version them.

## Terminal and shell

- [ ] Fuzzy helpers: `fkill` (interactive process termination), `flog` (Git history), `fcd` (directory navigation); refine `fproc` and `fgb` (Git branch switch) already represented by existing fzf helpers. Avoid duplicate bindings.
- [ ] Shell/terminal command palette and discoverable workflows.
- [ ] Terminal dashboards for system status, Git/dotfiles and Kubernetes.
- [ ] Improve SSH-host completion and host selection.
- [ ] Expand Fastfetch ASCII art/logo workflow and custom logos.
- [ ] Audit aliases/functions for usefulness, duplication and consistency.

## KDE / desktop rice

- [ ] Finish lock screen customization.
- [ ] Customize KRunner and its launch/search experience.
- [ ] Window rules, positioning and application behavior.
- [ ] Panel layout and desktop layout.
- [ ] Window animations.
- [ ] Explore a global theme/profile switcher: wallpapers, colors and compatible application themes together; decide scope before implementation.
- [ ] Move selected KDE settings and keyboard shortcuts into dotfiles, carefully excluding machine-specific or volatile state.
- [ ] Explore custom app icons.
- [ ] Investigate custom boot visuals.
- [ ] Explore password-entry auto-submit on login/unlock **only if supported securely**; assess usability/security tradeoffs.
- [ ] Investigate Linux face authentication compatibility and security before enabling it.

## Applications and integration

- [ ] Zen Browser keyboard shortcuts and integration.
- [ ] Obsidian: templates, hotkeys, plugins and note workflows.
- [ ] Choose a fast, minimal scratchpad/notepad.
- [ ] Diagnose KDE Connect pairing/connectivity persistence.
- [ ] Explore Niri (Wayland compositor) as a separate experiment, not a prerequisite for KDE.
- [ ] Improve cross-application shortcut consistency.

## Reproducibility — later

- [ ] Create an intentional package manifest (APT, Flatpak, external binaries and other package managers), with optional vs required packages.
- [ ] Inventory configurations currently outside GNU Stow.
- [ ] Document dependencies, fonts and installation requirements.
- [ ] Build and test bootstrap automation **after** the workstation workflows are stable.
- [ ] Keep machine-specific paths, credentials, tokens, keys and other secrets out of the repository.

## Suggested sequence

1. Stabilize Lua tooling and LazyVim completion/keybindings.
2. Prototype clipboard history/search and choose shortcut behavior.
3. Refresh cheatsheets and build searchable command discovery.
4. Iterate on SSH prompt, fuzzy helpers and terminal dashboards.
5. Tackle KDE theming, shortcut consistency and desktop behavior.
6. Inventory packages/configuration; only then automate setup.

## Notes

- Current setup includes Bash, Ghostty, Starship, fzf, GNU Stow, VS Code and LazyVim.
- Existing fzf helpers include process selection, Git branch selection and SSH host selection; improve rather than replace blindly.
- Track new ideas here as they arise; prioritize by daily usefulness, complexity and enjoyment.
