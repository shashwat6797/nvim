# ANTIGRAVITY.md

## Project Overview
**Description**: Modular, Lua-based Neovim configuration.
**Purpose**: Personal Development Environment (PDE).
**Target Users**: Developer / Maintainer.

## Tech Stack
**Core**: Neovim (v0.9+), Lua 5.1/JIT.
**Plugin Manager**: `packer.nvim`.
**LSP/Formatting**: `mason.nvim`, `nvim-lspconfig`, `none-ls.nvim`, `conform.nvim`.
**UI**: `neo-tree` (Explorer), `barbar.nvim` (Buffers), `lualine.nvim` (Status), `morta` (Theme).
**Git**: `vim-fugitive`, `diffview.nvim`.

## Architecture Summary
**Entry Point**: `init.lua` (Loads modules).
**Folder Structure**:
- `lua/base.lua`: General vim options.
- `lua/maps.lua`: Keybindings.
- `lua/plugins.lua`: Plugin definitions.
- `lua/highlight.lua`: Visual settings.
- `plugin/`: Autoloaded scripts.

**Design Patterns**:
- **Separation of Concerns**: Config split by function (maps vs options vs plugins).
- **Platform Agnostic Core**: OS-specific config isolated (e.g., `lua/linux.lua`).

## Coding Standards
**Backend (Lua)**:
- **Style**: 2-space indentation.
- **Scope**: Use `local` for functions/variables.
- **API**: Use `vim.opt`, `vim.keymap.set`, `vim.api`.
- **String Quoting**: Double quotes `"` preferred.

**Configuration Rules**:
- **Plugins**: Define in `lua/plugins.lua` inside `packer.startup`.
- **Mappings**: Centralize in `lua/maps.lua`. Use descriptive comments.
- **Theming**: Configure in `lua/highlight.lua` or specific plugin block.

## Security Rules
- **Secrets**: No hardcoded credentials. Use env vars.
- **File Permissions**: `.config/nvim` should be user-writable only.
- **External Calls**: Inspect headers/payloads in `vim.fn.system`.

## Constraints
- **Performance**: Startup time must remain low.
- **Stability**: Do not introduce unstable/abandoned plugins.
- **Simplicity**: Native functions > Plugins for simple tasks.
- **Structure**: Do NOT merge modules back into `init.lua`.

## AI Instructions
- **Modifications**: Check for OS-specific logic before applying changes.
- **Dependency**: If adding a plugin, remind user to run `:PackerSync`.
- **Refactoring**: Prefer small, atomic edits to specific Lua modules.
- **Overengineering**: REJECT formatting/linting setups that conflict with `none-ls` or `conform`.
