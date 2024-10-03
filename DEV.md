# Development

## Load Dependencies

Loading takes place in 3 stages: before lazy.nvim (before),
loading stage (loader) and after loading lazy.nvim (after).

### Before Stage

This stage has no dependencies to `lazy.nvim` because no plugins have been loaded yet.

Order:

1. Config: The configuration must be loaded first. It is injected to other modules
   during the before stage. Make sure that you do not require any other module or if
   you decide that a module must be loaded, guarantee that no other dependencies are created.
2. Registry: The registry must be loaded after the configuration. It discoverers `adapters`
   and merges configuration settings from the config.
3. Globals: The `globals` module sets up the global table `_G.CoreVim`

## Testing

### Busted

This is the default starter (rocks tree: lib/luarocks/rocks-5.1/busted/2.2.0-1/bin/busted)

```lua
#!/usr/bin/env lua
-- Busted command-line runner
require 'busted.runner'({ standalone = false })
```

## Which-Key Errors

==============================================================================
which-key: require("which-key.health").check()

- OK Most of these checks are for informational purposes only.
  WARNINGS should be treated as a warning, and don't necessarily indicate a problem with your config.
  Please |DON'T| report these warnings as an issue.

Checking your config ~

- OK |mini.icons| is installed
- OK |nvim-web-devicons| is installed

Checking for issues with your mappings ~

- OK No issues reported

checking for overlapping keymaps ~

- WARNING In mode `n`, <,w> overlaps with <<C-W><C-D>>, <,wd>, <,wm>, <<C-W><Space>>:
  - <,w>: windows
  - <<C-W><C-D>>: Show diagnostics under the cursor
  - <,wd>: Delete Window
  - <,wm>: Enable Maximize
  - <<C-W><Space>>: Window Hydra Mode (which-key)
- WARNING In mode `n`, <<Space>d> overlaps with <<Space>dn>, <<Space>df>:
  - <<Space>d>: Diagnostic Window
- WARNING In mode `n`, <gr> overlaps with <gra>, <grn>, <grr>:
  - <gr>: References
  - <gra>: vim.lsp.buf.code_action()
  - <grn>: vim.lsp.buf.rename()
  - <grr>: vim.lsp.buf.references()
- WARNING In mode `n`, <gc> overlaps with <gco>, <gcc>, <gcO>:
  - <gc>: Comment
  - <gco>: Add Comment Below
  - <gcc>: Comment line
  - <gcO>: Add Comment Above
- WARNING In mode `x`, <i> overlaps with <in>, <il>, <ii>, <ih>:
  - <i>: inside
  - <in>: next
  - <il>: last
  - <ii>: indent
  - <ih>: GitSigns Select Hunk
- WARNING In mode `x`, <a> overlaps with <an>, <a%>, <al>, <ai>:
  - <a>: around
  - <an>: next
  - <al>: last
  - <ai>: indent
- WARNING In mode `x`, <,rs> overlaps with <,rsf>:
  - <,rs>: Refactor
  - <,rsf>: Suppress Formatter
- WARNING In mode `o`, <i> overlaps with <in>, <il>, <ii>, <ih>:
  - <i>: inside
  - <in>: next
  - <il>: last
  - <ii>: indent
  - <ih>: GitSigns Select Hunk
- WARNING In mode `o`, <a> overlaps with <an>, <al>, <ai>:
  - <a>: around
  - <an>: next
  - <al>: last
  - <ai>: indent
- OK Overlapping keymaps are only reported for informational purposes.
  This doesn't necessarily mean there is a problem with your config.

Checking for duplicate mappings ~

- WARNING Duplicates for <uA> in mode `v`:
  - `{ rhs = "align with preview", silent = true }`
  - `{ rhs = "Align with Preview", silent = true }`
- WARNING Duplicates for <U> in mode `n`:
  - `{ abbr = 0, buffer = 0, expr = 0, lhsraw = "U", lnum = 0, mode_bits = 1, noremap = 1, nowait = 0, rhs = "", script = 0, scriptversion = 1, sid = -8, silent = 0 }`
  - `{ abbr = 0, buffer = 0, expr = 0, lhsraw = "U", lnum = 0, mode_bits = 1, noremap = 1, nowait = 0, rhs = "", script = 0, scriptversion = 1, sid = -8, silent = 0 }`
  - `{ abbr = 0, buffer = 0, expr = 0, lhsraw = "U", lnum = 0, mode_bits = 1, noremap = 1, nowait = 0, rhs = "", script = 0, scriptversion = 1, sid = -8, silent = 0 }`
  - `{ abbr = 0, buffer = 0, expr = 0, lhsraw = "U", lnum = 0, mode_bits = 1, noremap = 1, nowait = 0, rhs = "", script = 0, scriptversion = 1, sid = -8, silent = 0 }`
  - `{ abbr = 0, buffer = 0, expr = 0, lhsraw = "U", lnum = 0, mode_bits = 1, noremap = 1, nowait = 0, rhs = "", script = 0, scriptversion = 1, sid = -8, silent = 0 }`
  - `{ abbr = 0, buffer = 0, expr = 0, lhsraw = "U", lnum = 0, mode_bits = 1, noremap = 1, nowait = 0, rhs = "", script = 0, scriptversion = 1, sid = -8, silent = 0 }`
  - `{ abbr = 0, buffer = 0, expr = 0, lhsraw = "U", lnum = 0, mode_bits = 1, noremap = 1, nowait = 0, rhs = "", script = 0, scriptversion = 1, sid = -8, silent = 0 }`
  - User2: `{ group = true }`
  - `{ abbr = 0, buffer = 0, expr = 0, lhsraw = "U", lnum = 0, mode_bits = 1, noremap = 1, nowait = 0, rhs = "", script = 0, scriptversion = 1, sid = -8, silent = 0 }`
  - `{ abbr = 0, buffer = 0, expr = 0, lhsraw = "U", lnum = 0, mode_bits = 1, noremap = 1, nowait = 0, rhs = "", script = 0, scriptversion = 1, sid = -8, silent = 0 }`
- WARNING Duplicates for <u> in mode `n`:
  - `{ abbr = 0, buffer = 0, expr = 0, lhsraw = "u", lnum = 0, mode_bits = 1, noremap = 1, nowait = 0, rhs = "", script = 0, scriptversion = 1, sid = -8, silent = 0 }`
  - `{ abbr = 0, buffer = 0, expr = 0, lhsraw = "u", lnum = 0, mode_bits = 1, noremap = 1, nowait = 0, rhs = "", script = 0, scriptversion = 1, sid = -8, silent = 0 }`
  - `{ abbr = 0, buffer = 0, expr = 0, lhsraw = "u", lnum = 0, mode_bits = 1, noremap = 1, nowait = 0, rhs = "", script = 0, scriptversion = 1, sid = -8, silent = 0 }`
  - User1: `{ group = true }`
  - `{ abbr = 0, buffer = 0, expr = 0, lhsraw = "u", lnum = 0, mode_bits = 1, noremap = 1, nowait = 0, rhs = "", script = 0, scriptversion = 1, sid = -8, silent = 0 }`
  - `{ abbr = 0, buffer = 0, expr = 0, lhsraw = "u", lnum = 0, mode_bits = 1, noremap = 1, nowait = 0, rhs = "", script = 0, scriptversion = 1, sid = -8, silent = 0 }`
  - `{ abbr = 0, buffer = 0, expr = 0, lhsraw = "u", lnum = 0, mode_bits = 1, noremap = 1, nowait = 0, rhs = "", script = 0, scriptversion = 1, sid = -8, silent = 0 }`
  - `{ abbr = 0, buffer = 0, expr = 0, lhsraw = "u", lnum = 0, mode_bits = 1, noremap = 1, nowait = 0, rhs = "", script = 0, scriptversion = 1, sid = -8, silent = 0 }`
  - `{ abbr = 0, buffer = 0, expr = 0, lhsraw = "u", lnum = 0, mode_bits = 1, noremap = 1, nowait = 0, rhs = "", script = 0, scriptversion = 1, sid = -8, silent = 0 }`
  - `{ abbr = 0, buffer = 0, expr = 0, lhsraw = "u", lnum = 0, mode_bits = 1, noremap = 1, nowait = 0, rhs = "", script = 0, scriptversion = 1, sid = -8, silent = 0 }`
- WARNING Duplicates for <ua> in mode `n`:
  - `{ rhs = "Align", silent = true }`
  - `{ rhs = "align", silent = true }`
- WARNING Duplicates for <uA> in mode `n`:
  - `{ rhs = "align with preview", silent = true }`
  - `{ rhs = "Align with Preview", silent = true }`
- WARNING Duplicates for <ua> in mode `v`:
  - `{ rhs = "align", silent = true }`
  - `{ rhs = "Align", silent = true }`
- OK Duplicate mappings are only reported for informational purposes.
  This doesn't necessarily mean there is a problem with your config.

## TODO

- graphql support
