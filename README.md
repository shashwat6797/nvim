# 🌀 Neovim Config (Lua-based)

A minimal yet powerful Neovim setup built with Lua. Comes pre-configured with:

- LSP + Autocompletion
- File explorer (Neo-tree)
- Bufferline (`barbar.nvim`)
- Statusline (Lualine)
- Debugging (nvim-dap + UI)
- Formatting (Conform, Guard, Prettier, null-ls)
- Theming (Solarized, Morta, Moonfly, etc.)
- Terminal toggling
- Snippets + CMP
- Treesitter highlighting
- Markdown preview
- Emmet, Rust, Java, and more!

---

## 🚀 Installation

### 1. Clone the config

```sh
git clone https://github.com/YOUR_USERNAME/nvim-config.git ~/.config/nvim
Replace YOUR_USERNAME with your GitHub username.

2. Install packer.nvim
sh
Copy
Edit
git clone --depth 1 https://github.com/wbthomason/packer.nvim \
  ~/.local/share/nvim/site/pack/packer/start/packer.nvim
3. Launch Neovim and install plugins
sh
Copy
Edit
nvim
Then run:

vim
Copy
Edit
:PackerSync
Restart Neovim after plugin installation completes.

💡 Recommended Dependencies
Install these for LSPs, formatters, and extras:

sh
Copy
Edit
# Node-based tools
npm install -g prettier typescript typescript-language-server emmet-ls

# Python formatter
pip install black

# Rust formatter
cargo install stylua
Install ripgrep for Telescope live grep:

sh
Copy
Edit
sudo apt install ripgrep
📦 Language Servers
Managed via mason.nvim

vim
Copy
Edit
:Mason
Install LSPs like pyright, lua_ls, clangd, emmet-ls, etc.

🧠 Keybindings
Keybind	Action
te	New buffer
tc	Close current buffer
tn	Next buffer (barbar)
tp	Previous buffer (barbar)
<Leader>e	Toggle Neo-tree
<Leader>t	Toggle Terminal
<Leader>f	Rust format
<Leader>dt	Toggle DAP UI
:	FineCmdline (floating :)

🖼️ Screenshot
Add a screenshot here if needed.

🧼 Notes
Uses barbar.nvim to simulate tab UI with buffers.

:ls to list buffers, :bd to delete them.

Avoid :tabclose unless using actual tabs (:tabnew).

📜 License
MIT

Copy
Edit
