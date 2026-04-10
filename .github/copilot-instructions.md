# Copilot Instructions — keyjump.yazi

## Overview

This is a [Yazi](https://yazi-rs.github.io/) plugin written in Lua. It provides hop.nvim-style hint jumping for the Yazi file manager — the user sees label characters next to file entries and presses the corresponding key(s) to jump to that entry.

This is a maintained fork of DreamMaoMao/keyjump.yazi. The primary fork contribution is **label group cycling**: when visible files exceed the number of available labels, labels are reused across groups and the user presses `<Tab>`/`<S-Tab>` to cycle between them (similar to leap.nvim).

## Architecture

The entire plugin is a single file: `main.lua`. There is no build step, test suite, or linter configuration.

### Key concepts

- **Modes**: The plugin operates in four modes — `normal`, `keep`, `select`, and `global`. Normal exits after one jump; keep re-enters after jumping into a directory; select is for toggling selections; global shows labels across parent, current, and preview panes.
- **Label arrays**: Hardcoded key sequences at the top of the file define the hint labels. Single-character labels (`SINGLE_KEYS`) are used when few files are visible; double-character labels are used otherwise. Global mode has separate label arrays per pane (`GLOBAL_CURRENT_DOUBLE_KEYS`, `GLOBAL_PARENT_DOUBLE_KEYS`, `GLOBAL_PREVIEW_DOUBLE_KEYS`).
- **Group cycling**: `get_label_for_pos()` and `get_max_group()` compute which label group a file belongs to. `group_offset` tracks which group is active. `<Tab>`/`<S-Tab>` cycle the offset and rebuild candidates via `build_cands()`.
- **Sync vs async boundary**: Functions wrapped in `ya.sync()` run on Yazi's main thread and can access `cx` (the Yazi context). The main `entry()` and `read_input_todo()` functions are async. Data crosses this boundary via return values and state table mutations.
- **State**: Plugin state lives on the `state` table passed to `ya.sync()` callbacks. This includes mode, group offset, file counts, UI overrides, and user options from `setup()`.
- **UI patching**: `toggle_ui()` monkey-patches `Entity.icon` and `Status.mode` to render labels and mode indicators, saving and restoring the originals on exit.
- **Re-entry loop**: In keep/global modes, the plugin sets `state.again = true` and uses a `Header:children_add` watcher (`add_cwd_status_watch`) to re-invoke itself after directory changes settle.

### Input handling

`read_input_todo()` is the main input loop. It uses `ya.which()` to capture keys, then resolves them against the `cands` table built by `build_cands()`. Special keys (arrows, Esc, Space, etc.) are handled separately from label keys. Double-key input requires two sequential keypresses with `<Backspace>` support for rollback.

## Conventions

- The codebase uses `stylua` for formatting (see `-- stylua: ignore` markers on large tables). Run `stylua main.lua` to format.
- Labels use `-- stylua: ignore` to preserve hand-tuned table layouts.
- User-configurable options are set via `setup()` in the user's `init.lua` and stored as `state.opt_*` fields.
- Yazi actions are emitted via `ya.mgr_emit()` — never called directly.
- The plugin targets the latest main branch of Yazi (not stable releases).
