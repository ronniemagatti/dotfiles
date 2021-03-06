-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/Users/ronnieandrewmagatti/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/ronnieandrewmagatti/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/ronnieandrewmagatti/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/ronnieandrewmagatti/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/ronnieandrewmagatti/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["alternate-toggler"] = {
    config = { "\27LJ\2\n�\1\0\0\6\0\t\0\r6\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0005\5\6\0B\0\5\0016\0\0\0009\0\a\0'\2\b\0B\0\2\1K\0\1\0002 let g:at_custom_alternates = {'===': '!=='} \bcmd\1\0\1\fnoremap\2X<cmd>lua require('alternate-toggler').toggleAlternate(vim.fn.expand('<cword>'))<CR>\20<leader><space>\6n\20nvim_set_keymap\bapi\bvim\0" },
    loaded = false,
    needs_bufread = false,
    path = "/Users/ronnieandrewmagatti/.local/share/nvim/site/pack/packer/opt/alternate-toggler"
  },
  ["auto-session"] = {
    config = { "\27LJ\2\n5\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\26rmagatti.auto-session\frequire\0" },
    loaded = true,
    path = "/Users/ronnieandrewmagatti/.local/share/nvim/site/pack/packer/start/auto-session"
  },
  ["bufferize.vim"] = {
    commands = { "Bufferize" },
    loaded = false,
    needs_bufread = false,
    path = "/Users/ronnieandrewmagatti/.local/share/nvim/site/pack/packer/opt/bufferize.vim"
  },
  ["cheat.sh-vim"] = {
    commands = { "Cheat", "CheatPaste" },
    keys = { { "n", "<leader>KB" }, { "n", "<leader>KK" }, { "n", "<leader>KP" } },
    loaded = false,
    needs_bufread = false,
    path = "/Users/ronnieandrewmagatti/.local/share/nvim/site/pack/packer/opt/cheat.sh-vim"
  },
  ["diffview.nvim"] = {
    commands = { "DiffviewOpen" },
    config = { "\27LJ\2\n1\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\22rmagatti.diffview\frequire\0" },
    keys = { { "", "<leader>ddo" } },
    loaded = false,
    needs_bufread = false,
    path = "/Users/ronnieandrewmagatti/.local/share/nvim/site/pack/packer/opt/diffview.nvim"
  },
  firenvim = {
    loaded = true,
    path = "/Users/ronnieandrewmagatti/.local/share/nvim/site/pack/packer/start/firenvim"
  },
  ["friendly-snippets"] = {
    loaded = false,
    needs_bufread = false,
    path = "/Users/ronnieandrewmagatti/.local/share/nvim/site/pack/packer/opt/friendly-snippets"
  },
  fzf = {
    loaded = false,
    needs_bufread = false,
    path = "/Users/ronnieandrewmagatti/.local/share/nvim/site/pack/packer/opt/fzf"
  },
  ["fzf.vim"] = {
    load_after = {
      ["nvim-bqf"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/Users/ronnieandrewmagatti/.local/share/nvim/site/pack/packer/opt/fzf.vim"
  },
  ["git-worktree.nvim"] = {
    config = { "\27LJ\2\n�\1\0\0\3\0\a\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0B\0\2\0016\0\4\0009\0\5\0'\2\6\0B\0\2\1K\0\1\0Fnnoremap <leader>wt <cmd>Telescope git_worktree git_worktrees<CR>\bcmd\bvim\17git_worktree\19load_extension\14telescope\frequire\0" },
    keys = { { "", "<leader>wt" } },
    loaded = false,
    needs_bufread = false,
    path = "/Users/ronnieandrewmagatti/.local/share/nvim/site/pack/packer/opt/git-worktree.nvim"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\n1\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\22rmagatti.gitsigns\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/Users/ronnieandrewmagatti/.local/share/nvim/site/pack/packer/opt/gitsigns.nvim"
  },
  ["goto-preview"] = {
    config = { "\27LJ\2\nb\0\2\t\0\a\0\n6\2\0\0009\2\1\0029\2\2\2\18\4\0\0'\5\3\0'\6\4\0'\a\5\0005\b\6\0B\2\6\1K\0\1\0\1\0\1\fnoremap\2\v:q<CR>\6q\6n\24nvim_buf_set_keymap\bapi\bvim�\1\1\0\4\0\t\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0003\3\4\0=\3\5\2B\0\2\0016\0\6\0009\0\a\0'\2\b\0B\0\2\1K\0\1\0\26nnoremap <C-h> <C-w>w\bcmd\bvim\19post_open_hook\0\1\0\3\21default_mappings\2\rwinblend\3\n\ndebug\1\nsetup\17goto-preview\frequire\0" },
    keys = { { "n", "gpd" }, { "n", "gpi" }, { "n", "gP" } },
    loaded = false,
    needs_bufread = false,
    path = "/Users/ronnieandrewmagatti/.local/share/nvim/site/pack/packer/opt/goto-preview"
  },
  ["indent-blankline.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/Users/ronnieandrewmagatti/.local/share/nvim/site/pack/packer/opt/indent-blankline.nvim"
  },
  ["lightspeed.nvim"] = {
    config = { "\27LJ\2\n�\2\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\a\30full_inclusive_prefix_key\n<c-x>\21limit_ft_matches\3\5+match_only_the_start_of_same_char_seqs\2\25grey_out_search_area\2\27highlight_unique_chars\1)jump_on_partial_input_safety_timeout\3�\3\24jump_to_first_match\2\nsetup\15lightspeed\frequire\0" },
    keys = { { "n", "s" }, { "n", "S" }, { "n", "f" }, { "n", "F" } },
    loaded = false,
    needs_bufread = false,
    path = "/Users/ronnieandrewmagatti/.local/share/nvim/site/pack/packer/opt/lightspeed.nvim"
  },
  ["lsp-status.nvim"] = {
    loaded = true,
    path = "/Users/ronnieandrewmagatti/.local/share/nvim/site/pack/packer/start/lsp-status.nvim"
  },
  ["lsp-trouble.nvim"] = {
    commands = { "LspTrouble" },
    config = { "\27LJ\2\nu\0\0\3\0\6\0\n6\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\3\0009\0\4\0'\2\5\0B\0\2\1K\0\1\0,nnoremap <leader>xx <cmd>LspTrouble<CR>\bcmd\bvim\nsetup\ftrouble\frequire\0" },
    keys = { { "", "<leader>xx" } },
    loaded = false,
    needs_bufread = false,
    path = "/Users/ronnieandrewmagatti/.local/share/nvim/site/pack/packer/opt/lsp-trouble.nvim"
  },
  ["lsp_signature.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/Users/ronnieandrewmagatti/.local/share/nvim/site/pack/packer/opt/lsp_signature.nvim"
  },
  ["lua-dev.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/Users/ronnieandrewmagatti/.local/share/nvim/site/pack/packer/opt/lua-dev.nvim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\n0\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\21rmagatti.lualine\frequire\0" },
    loaded = true,
    path = "/Users/ronnieandrewmagatti/.local/share/nvim/site/pack/packer/start/lualine.nvim"
  },
  neogit = {
    commands = { "Neogit" },
    config = { "\27LJ\2\n]\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\17integrations\1\0\0\1\0\1\rdiffview\2\nsetup\vneogit\frequire\0" },
    loaded = false,
    needs_bufread = true,
    path = "/Users/ronnieandrewmagatti/.local/share/nvim/site/pack/packer/opt/neogit"
  },
  ["null-ls.nvim"] = {
    config = { "\27LJ\2\n9\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\fnull-ls\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/Users/ronnieandrewmagatti/.local/share/nvim/site/pack/packer/opt/null-ls.nvim"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\2\n7\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\28rmagatti.nvim-autopairs\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/Users/ronnieandrewmagatti/.local/share/nvim/site/pack/packer/opt/nvim-autopairs"
  },
  ["nvim-bqf"] = {
    after = { "fzf.vim" },
    config = { "\27LJ\2\nE\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\16auto_enable\2\nsetup\bbqf\frequire\0" },
    loaded = false,
    needs_bufread = true,
    path = "/Users/ronnieandrewmagatti/.local/share/nvim/site/pack/packer/opt/nvim-bqf"
  },
  ["nvim-compe"] = {
    after_files = { "/Users/ronnieandrewmagatti/.local/share/nvim/site/pack/packer/opt/nvim-compe/after/plugin/compe.vim" },
    config = { "\27LJ\2\n3\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\24rmagatti.nvim-compe\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/Users/ronnieandrewmagatti/.local/share/nvim/site/pack/packer/opt/nvim-compe"
  },
  ["nvim-dap"] = {
    after = { "telescope-dap.nvim", "nvim-dap-virtual-text" },
    config = { "\27LJ\2\na\0\0\3\0\5\0\n6\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0B\0\2\0016\0\0\0'\2\4\0B\0\2\1K\0\1\0\17rmagatti.dap\bdap\19load_extension\14telescope\frequire\0" },
    keys = { { "n", "<leader>db" }, { "n", "<leader>dB" } },
    loaded = false,
    needs_bufread = false,
    path = "/Users/ronnieandrewmagatti/.local/share/nvim/site/pack/packer/opt/nvim-dap"
  },
  ["nvim-dap-virtual-text"] = {
    load_after = {
      ["nvim-dap"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/Users/ronnieandrewmagatti/.local/share/nvim/site/pack/packer/opt/nvim-dap-virtual-text"
  },
  ["nvim-lightbulb"] = {
    config = { "\27LJ\2\n7\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\28rmagatti.nvim-lightbulb\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/Users/ronnieandrewmagatti/.local/share/nvim/site/pack/packer/opt/nvim-lightbulb"
  },
  ["nvim-lsp-ts-utils"] = {
    config = { "\27LJ\2\n:\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\31rmagatti.nvim-lsp-ts-utils\frequire\0" },
    load_after = {
      ["nvim-lspinstall"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/Users/ronnieandrewmagatti/.local/share/nvim/site/pack/packer/opt/nvim-lsp-ts-utils"
  },
  ["nvim-lspconfig"] = {
    after = { "nvim-lspinstall" },
    loaded = false,
    needs_bufread = false,
    path = "/Users/ronnieandrewmagatti/.local/share/nvim/site/pack/packer/opt/nvim-lspconfig"
  },
  ["nvim-lspinstall"] = {
    after = { "nvim-lsp-ts-utils" },
    config = { "\27LJ\2\n;\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0 rmagatti.lsp-server-configs\frequire\0" },
    load_after = {
      ["nvim-lspconfig"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/Users/ronnieandrewmagatti/.local/share/nvim/site/pack/packer/opt/nvim-lspinstall"
  },
  ["nvim-toggleterm.lua"] = {
    commands = { "ToggleTerm", "ToggleTermOpenAll", "ToggleTermCloseAll" },
    config = { "\27LJ\2\nU\0\1\2\0\3\0\f9\1\0\0\a\1\1\0X\1\3�)\1\25\0L\1\2\0X\1\5�9\1\0\0\a\1\2\0X\1\2�)\1(\0L\1\2\0K\0\1\0\rvertical\15horizontal\14direction�\5\1\0\a\0\28\00096\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\3\0003\4\4\0=\4\5\3B\1\2\0016\1\6\0009\1\a\0019\1\b\1'\3\t\0'\4\n\0'\5\v\0005\6\f\0B\1\5\0016\1\6\0009\1\a\0019\1\b\1'\3\t\0'\4\r\0'\5\14\0005\6\15\0B\1\5\0016\1\6\0009\1\a\0019\1\b\1'\3\t\0'\4\16\0'\5\17\0005\6\18\0B\1\5\0016\1\6\0009\1\a\0019\1\b\1'\3\t\0'\4\19\0'\5\20\0005\6\21\0B\1\5\0016\1\6\0009\1\a\0019\1\b\1'\3\t\0'\4\22\0'\5\23\0005\6\24\0B\1\5\0016\1\6\0009\1\a\0019\1\b\1'\3\t\0'\4\25\0'\5\26\0005\6\27\0B\1\5\1K\0\1\0\1\0\1\fnoremap\2.<cmd>4ToggleTerm direction='vertical'<CR>\15<leader>4v\1\0\1\fnoremap\2.<cmd>3ToggleTerm direction='vertical'<CR>\15<leader>3v\1\0\1\fnoremap\2.<cmd>2ToggleTerm direction='vertical'<CR>\15<leader>2v\1\0\1\fnoremap\0020<cmd>4ToggleTerm direction='horizontal'<CR>\15<leader>4s\1\0\1\fnoremap\0020<cmd>3ToggleTerm direction='horizontal'<CR>\15<leader>3s\1\0\1\fnoremap\0020<cmd>2ToggleTerm direction='horizontal'<CR>\15<leader>2s\6n\20nvim_set_keymap\bapi\bvim\tsize\0\1\0\3\17open_mapping\n<c-\\>\20insert_mappings\2\20start_in_insert\1\nsetup\15toggleterm\frequire\0" },
    keys = { { "n", "<C-\\>" }, { "i", "<C-\\>" }, { "n", "<leader>2s" }, { "n", "<leader>3s" }, { "n", "<leader>4s" }, { "n", "<leader>2v" }, { "n", "<leader>3v" }, { "n", "<leader>4v" } },
    loaded = false,
    needs_bufread = false,
    path = "/Users/ronnieandrewmagatti/.local/share/nvim/site/pack/packer/opt/nvim-toggleterm.lua"
  },
  ["nvim-treesitter"] = {
    after = { "nvim-ts-context-commentstring", "nvim-treesitter-textsubjects", "nvim-treesitter-textobjects" },
    loaded = true,
    only_config = true
  },
  ["nvim-treesitter-textobjects"] = {
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/Users/ronnieandrewmagatti/.local/share/nvim/site/pack/packer/opt/nvim-treesitter-textobjects"
  },
  ["nvim-treesitter-textsubjects"] = {
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/Users/ronnieandrewmagatti/.local/share/nvim/site/pack/packer/opt/nvim-treesitter-textsubjects"
  },
  ["nvim-ts-context-commentstring"] = {
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/Users/ronnieandrewmagatti/.local/share/nvim/site/pack/packer/opt/nvim-ts-context-commentstring"
  },
  ["nvim-ts-rainbow"] = {
    loaded = true,
    path = "/Users/ronnieandrewmagatti/.local/share/nvim/site/pack/packer/start/nvim-ts-rainbow"
  },
  ["nvim-web-devicons"] = {
    config = { "\27LJ\2\n:\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\31rmagatti.nvim-web-devicons\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/Users/ronnieandrewmagatti/.local/share/nvim/site/pack/packer/opt/nvim-web-devicons"
  },
  ["octo.nvim"] = {
    commands = { "Octo" },
    config = { "\27LJ\2\n2\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\tocto\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/Users/ronnieandrewmagatti/.local/share/nvim/site/pack/packer/opt/octo.nvim"
  },
  ["orgmode.nvim"] = {
    config = { "\27LJ\2\n�\1\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\2\20org_agenda_file\22~/Documents/org/*\27org_default_notes_file\31~/Documents/org/refile.org\nsetup\forgmode\frequire\0" },
    loaded = true,
    path = "/Users/ronnieandrewmagatti/.local/share/nvim/site/pack/packer/start/orgmode.nvim"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/ronnieandrewmagatti/.local/share/nvim/site/pack/packer/start/packer.nvim"
  },
  playground = {
    commands = { "TSPlaygroundToggle" },
    loaded = false,
    needs_bufread = true,
    path = "/Users/ronnieandrewmagatti/.local/share/nvim/site/pack/packer/opt/playground"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/ronnieandrewmagatti/.local/share/nvim/site/pack/packer/start/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/Users/ronnieandrewmagatti/.local/share/nvim/site/pack/packer/start/popup.nvim"
  },
  ["session-lens"] = {
    config = { "\27LJ\2\ns\0\0\3\0\5\0\n6\0\0\0'\2\1\0B\0\2\0016\0\0\0'\2\2\0B\0\2\0029\0\3\0'\2\4\0B\0\2\1K\0\1\0\17session-lens\19load_extension\14telescope\26rmagatti.session-lens\frequire\0" },
    keys = { { "", "<leader>ss" } },
    loaded = false,
    needs_bufread = false,
    path = "/Users/ronnieandrewmagatti/.local/share/nvim/site/pack/packer/opt/session-lens"
  },
  ["symbols-outline.nvim"] = {
    commands = { "SymbolsOutline", "SymbolsOutlineOpen", "SymbolsOutlineClose" },
    config = { "\27LJ\2\ni\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\2\16show_guides\2\27highlight_hovered_item\2\nsetup\20symbols-outline\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/Users/ronnieandrewmagatti/.local/share/nvim/site/pack/packer/opt/symbols-outline.nvim"
  },
  ["targets.vim"] = {
    loaded = true,
    path = "/Users/ronnieandrewmagatti/.local/share/nvim/site/pack/packer/start/targets.vim"
  },
  ["telescope-dap.nvim"] = {
    config = { "\27LJ\2\nH\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0B\0\2\1K\0\1\0\bdap\19load_extension\14telescope\frequire\0" },
    load_after = {
      ["nvim-dap"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/Users/ronnieandrewmagatti/.local/share/nvim/site/pack/packer/opt/telescope-dap.nvim"
  },
  ["telescope-fzf-native.nvim"] = {
    config = { "\27LJ\2\nH\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0B\0\2\1K\0\1\0\bfzf\19load_extension\14telescope\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/Users/ronnieandrewmagatti/.local/share/nvim/site/pack/packer/opt/telescope-fzf-native.nvim"
  },
  ["telescope-lsp-handlers.nvim"] = {
    config = { "\27LJ\2\nQ\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0B\0\2\1K\0\1\0\17lsp_handlers\19load_extension\14telescope\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/Users/ronnieandrewmagatti/.local/share/nvim/site/pack/packer/opt/telescope-lsp-handlers.nvim"
  },
  ["telescope-packer.nvim"] = {
    config = { "\27LJ\2\n�\1\0\0\3\0\a\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0B\0\2\0016\0\4\0009\0\5\0'\2\6\0B\0\2\1K\0\1\0Rnnoremap <leader>pl :lua require('telescope').extensions.packer.plugins()<CR>\bcmd\bvim\vpacker\19load_extension\14telescope\frequire\0" },
    keys = { { "", "<leader>pl" } },
    loaded = false,
    needs_bufread = false,
    path = "/Users/ronnieandrewmagatti/.local/share/nvim/site/pack/packer/opt/telescope-packer.nvim"
  },
  ["telescope.nvim"] = {
    commands = { "Telescope" },
    config = { "\27LJ\2\n2\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\23rmagatti.telescope\frequire\0" },
    keys = { { "n", "<C-p>" }, { "n", "<leader>b" }, { "n", "<leader>sd" }, { "n", "<leader>ps" } },
    loaded = false,
    needs_bufread = false,
    path = "/Users/ronnieandrewmagatti/.local/share/nvim/site/pack/packer/opt/telescope.nvim"
  },
  ["todo-comments.nvim"] = {
    commands = { "TodoQuickFix", "TodoTrouble", "TodoTelescope" },
    config = { "\27LJ\2\n?\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\18todo-comments\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/Users/ronnieandrewmagatti/.local/share/nvim/site/pack/packer/opt/todo-comments.nvim"
  },
  ["tokyonight.nvim"] = {
    config = { "\27LJ\2\n3\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\24rmagatti.tokyonight\frequire\0" },
    loaded = true,
    path = "/Users/ronnieandrewmagatti/.local/share/nvim/site/pack/packer/start/tokyonight.nvim"
  },
  undotree = {
    config = { "\27LJ\2\nH\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0)nnoremap <leader>u :UndotreeShow<CR>\bcmd\bvim\0" },
    keys = { { "", "<leader>u" } },
    loaded = false,
    needs_bufread = false,
    path = "/Users/ronnieandrewmagatti/.local/share/nvim/site/pack/packer/opt/undotree"
  },
  ["vim-commentary"] = {
    keys = { { "", "gc" } },
    loaded = false,
    needs_bufread = false,
    path = "/Users/ronnieandrewmagatti/.local/share/nvim/site/pack/packer/opt/vim-commentary"
  },
  ["vim-dirvish"] = {
    config = { "\27LJ\2\n�\2\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0�\2      command! VLeftDirvish leftabove vsplit | vertical resize 50 | silent Dirvish\n      command! VLeftDirvishFile leftabove vsplit | vertical resize 50 | silent Dirvish %\n      nnoremap <leader>fs :VLeftDirvish<CR>\n      nnoremap <leader>ff :VLeftDirvishFile<CR>\n      \bcmd\bvim\0" },
    loaded = true,
    path = "/Users/ronnieandrewmagatti/.local/share/nvim/site/pack/packer/start/vim-dirvish"
  },
  ["vim-dirvish-dovish"] = {
    config = { "\27LJ\2\n�\a\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0�\a        let g:dirvish_dovish_map_keys = 0\n\n        augroup dirvish_config\n        autocmd!\n        \" unmap dirvish default\n        autocmd FileType dirvish silent! unmap <buffer><C-p>\n        autocmd FileType dirvish silent! unmap <buffer>p\n\n        \" My mappings\n        autocmd FileType dirvish silent! map <buffer>i <Plug>(dovish_create_file)\n        autocmd FileType dirvish silent! map <buffer>I <Plug>(dovish_create_directory)\n        autocmd FileType dirvish silent! map <buffer>dd <Plug>(dovish_delete)\n        autocmd FileType dirvish silent! map <buffer>r <Plug>(dovish_rename)\n        autocmd FileType dirvish silent! map <buffer>yy <Plug>(dovish_yank)\n        autocmd FileType dirvish silent! map <buffer>yy <Plug>(dovish_yank)\n        autocmd FileType dirvish silent! map <buffer>p <Plug>(dovish_copy)\n        autocmd FileType dirvish silent! map <buffer>P <Plug>(dovish_move)\n        augroup END\n      \bcmd\bvim\0" },
    loaded = true,
    path = "/Users/ronnieandrewmagatti/.local/share/nvim/site/pack/packer/start/vim-dirvish-dovish"
  },
  ["vim-dirvish-git"] = {
    loaded = false,
    needs_bufread = false,
    path = "/Users/ronnieandrewmagatti/.local/share/nvim/site/pack/packer/opt/vim-dirvish-git"
  },
  ["vim-easy-align"] = {
    commands = { "EasyAlign" },
    config = { "\27LJ\2\n2\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\23rmagatti.easyalign\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/Users/ronnieandrewmagatti/.local/share/nvim/site/pack/packer/opt/vim-easy-align"
  },
  ["vim-exchange"] = {
    keys = { { "n", "cx" }, { "x", "X" } },
    loaded = false,
    needs_bufread = false,
    path = "/Users/ronnieandrewmagatti/.local/share/nvim/site/pack/packer/opt/vim-exchange"
  },
  ["vim-fugitive"] = {
    commands = { "Git", "Gstatus", "Gblame", "Gpush", "Gpull", "Gvdiffsplit" },
    config = { "\27LJ\2\n�\1\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0�\1        nnoremap <silent> <leader>gb :<C-u>Git blame<CR>\n        nnoremap <leader>gd :Gvdiffsplit!<CR>\n        nnoremap gj :diffget //2<CR>\n        nnoremap g; :diffget //3<CR>\n        \bcmd\bvim\0" },
    keys = { { "n", "<leader>gd" }, { "n", "<leader>gb" }, { "n", "<leader>hp" }, { "n", "<leader>hs" }, { "n", "<leader>hu" }, { "n", "<leader>hr" }, { "n", "<leader>hR" }, { "n", "<leader>hp" }, { "n", "<leader>hb" } },
    loaded = false,
    needs_bufread = true,
    path = "/Users/ronnieandrewmagatti/.local/share/nvim/site/pack/packer/opt/vim-fugitive"
  },
  ["vim-grepper"] = {
    config = { "\27LJ\2\nz\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0[        nmap gs <plug>(GrepperOperator)\n        xmap gs <plug>(GrepperOperator)\n      \bcmd\bvim\0" },
    keys = { { "n", "gs" }, { "x", "gs" } },
    loaded = false,
    needs_bufread = false,
    path = "/Users/ronnieandrewmagatti/.local/share/nvim/site/pack/packer/opt/vim-grepper"
  },
  ["vim-indent-object"] = {
    loaded = false,
    needs_bufread = false,
    path = "/Users/ronnieandrewmagatti/.local/share/nvim/site/pack/packer/opt/vim-indent-object"
  },
  ["vim-jsdoc"] = {
    commands = { "JsDoc" },
    loaded = false,
    needs_bufread = true,
    path = "/Users/ronnieandrewmagatti/.local/share/nvim/site/pack/packer/opt/vim-jsdoc"
  },
  ["vim-repeat"] = {
    loaded = true,
    path = "/Users/ronnieandrewmagatti/.local/share/nvim/site/pack/packer/start/vim-repeat"
  },
  ["vim-ripgrep"] = {
    commands = { "Rg" },
    loaded = false,
    needs_bufread = false,
    path = "/Users/ronnieandrewmagatti/.local/share/nvim/site/pack/packer/opt/vim-ripgrep"
  },
  ["vim-startuptime"] = {
    commands = { "StartupTime" },
    config = { "vim.g.startuptime_tries = 10" },
    loaded = false,
    needs_bufread = false,
    path = "/Users/ronnieandrewmagatti/.local/share/nvim/site/pack/packer/opt/vim-startuptime"
  },
  ["vim-surround"] = {
    keys = { { "n", "cs" }, { "n", "ds" }, { "x", "S" }, { "n", "ys" } },
    loaded = false,
    needs_bufread = false,
    path = "/Users/ronnieandrewmagatti/.local/share/nvim/site/pack/packer/opt/vim-surround"
  },
  ["vim-terraform"] = {
    loaded = false,
    needs_bufread = true,
    path = "/Users/ronnieandrewmagatti/.local/share/nvim/site/pack/packer/opt/vim-terraform"
  },
  ["vim-test"] = {
    config = { "\27LJ\2\n�\t\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0�\t      let g:test#javascript#mocha#file_pattern = '\\v(tests?/.*|(test))\\.(js|jsx|coffee|ts)$'\n      let test#javascript#mocha#executable = 'yarn test'\n      let test#javascript#jest#executable = 'yarn test'\n\n      function! DebugStrategy(cmd)\n        let runner = test#determine_runner(expand('%'))\n        call luaeval(\"require('rmagatti.dap').debug\")(runner, a:cmd)\n      endfunction\n\n      function! SplitStrategy(cmd)\n        vertical new | call termopen(a:cmd) | startinsert\n      endfunction\n      let g:test#custom_strategies = {'terminal_split': function('SplitStrategy'), 'debug': function('DebugStrategy')}\n      let g:test#strategy = 'terminal_split'\n\n      \" Regular mappings\n      nmap <leader>tt :TestNearest<CR>\n      nmap <leader>tf :TestFile<CR>\n      nmap <leader>ts :TestSuite<CR>\n      nmap <leader>tl :TestLast<CR>\n      nmap <leader>tv :TestVisit<CR>\n\n      \" Debug mappings\n      nmap <leader>tdt :TestNearest -strategy=debug<CR>\n      nmap <leader>tdf :TestFile -strategy=debug<CR>\n      nmap <leader>tds :TestSuite -strategy=debug<CR>\n      nmap <leader>tdl :TestLast -strategy=debug<CR>\n      nmap <leader>tdv :TestVisit -strategy=debug<CR>\n    \bcmd\bvim\0" },
    keys = { { "n", "<leader>tf" }, { "n", "<leader>tt" }, { "n", "<leader>ts" }, { "n", "<leader>tf" }, { "n", "<leader>tt" }, { "n", "<leader>tf" }, { "n", "<leader>ts" }, { "n", "<leader>tl" }, { "n", "<leader>tv" }, { "n", "<leader>tdt" }, { "n", "<leader>tdf" }, { "n", "<leader>tds" }, { "n", "<leader>tdl" }, { "n", "<leader>tdv" } },
    loaded = false,
    needs_bufread = false,
    path = "/Users/ronnieandrewmagatti/.local/share/nvim/site/pack/packer/opt/vim-test"
  },
  ["vim-visual-multi"] = {
    keys = { { "", "<C-n>" } },
    loaded = false,
    needs_bufread = false,
    path = "/Users/ronnieandrewmagatti/.local/share/nvim/site/pack/packer/opt/vim-visual-multi"
  },
  ["vim-vsnip"] = {
    loaded = false,
    needs_bufread = false,
    path = "/Users/ronnieandrewmagatti/.local/share/nvim/site/pack/packer/opt/vim-vsnip"
  },
  ["vim-vsnip-integ"] = {
    after_files = { "/Users/ronnieandrewmagatti/.local/share/nvim/site/pack/packer/opt/vim-vsnip-integ/after/plugin/vsnip_integ.vim" },
    loaded = false,
    needs_bufread = false,
    path = "/Users/ronnieandrewmagatti/.local/share/nvim/site/pack/packer/opt/vim-vsnip-integ"
  },
  vimpeccable = {
    loaded = false,
    needs_bufread = false,
    path = "/Users/ronnieandrewmagatti/.local/share/nvim/site/pack/packer/opt/vimpeccable"
  },
  vimwiki = {
    keys = { { "n", "<leader>ww" }, { "n", "<leader>wi" }, { "n", "<leader>w<leader>w" }, { "n", "<leader>ws" } },
    loaded = false,
    needs_bufread = true,
    path = "/Users/ronnieandrewmagatti/.local/share/nvim/site/pack/packer/opt/vimwiki"
  },
  ["which-key.nvim"] = {
    config = { "\27LJ\2\n2\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\23rmagatti.which-key\frequire\0" },
    loaded = true,
    path = "/Users/ronnieandrewmagatti/.local/share/nvim/site/pack/packer/start/which-key.nvim"
  },
  ["zen-mode.nvim"] = {
    config = { "\27LJ\2\n�\1\0\0\5\0\v\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\4\0005\4\3\0=\4\5\3=\3\a\2B\0\2\0016\0\b\0009\0\t\0'\2\n\0B\0\2\1K\0\1\0h        nnoremap <leader>zz :lua require(\"zen-mode\").toggle({ window = { width = .50 }})<CR>\n      \bcmd\bvim\fplugins\1\0\0\nkitty\1\0\0\1\0\2\tfont\a+4\fenabled\2\nsetup\rzen-mode\frequire\0" },
    keys = { { "", "<leader>zz" } },
    loaded = false,
    needs_bufread = false,
    path = "/Users/ronnieandrewmagatti/.local/share/nvim/site/pack/packer/opt/zen-mode.nvim"
  }
}

time([[Defining packer_plugins]], false)
local module_lazy_loads = {
  ["^compe"] = "nvim-compe",
  ["^lightspeed"] = "lightspeed.nvim",
  ["^lsp_signature"] = "lsp_signature.nvim",
  ["^lua%-dev"] = "lua-dev.nvim",
  ["^null%-ls"] = "null-ls.nvim",
  ["^nvim%-web%-devicons"] = "nvim-web-devicons",
  ["^telescope"] = "telescope.nvim",
  ["^telescope%._extensions%.dap"] = "telescope-dap.nvim",
  ["^telescope%.builtin"] = "telescope-fzf-native.nvim",
  ["^vimp"] = "vimpeccable"
}
local lazy_load_called = {['packer.load'] = true}
local function lazy_load_module(module_name)
  local to_load = {}
  if lazy_load_called[module_name] then return nil end
  lazy_load_called[module_name] = true
  for module_pat, plugin_name in pairs(module_lazy_loads) do
    if not _G.packer_plugins[plugin_name].loaded and string.match(module_name, module_pat)then
      to_load[#to_load + 1] = plugin_name
    end
  end

  require('packer.load')(to_load, {module = module_name}, _G.packer_plugins)
end

if not vim.g.packer_custom_loader_enabled then
  table.insert(package.loaders, 1, lazy_load_module)
  vim.g.packer_custom_loader_enabled = true
end

-- Setup for: vimwiki
time([[Setup for vimwiki]], true)
try_loadstring("\27LJ\2\n�\2\0\0\3\0\4\0\t6\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\0\0009\0\1\0'\2\3\0B\0\2\1K\0\1\0>        let g:vimwiki_listsyms = '✗○◐●✓'\n      �\1let g:vimwiki_list = [{'path': '~/vimwiki/', 'syntax': 'markdown', 'ext': '.md', 'nested_syntaxes':{'python': 'python', 'c++': 'cpp', 'typescript': 'typescript'}}]\bcmd\bvim\0", "setup", "vimwiki")
time([[Setup for vimwiki]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\n0\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\21rmagatti.lualine\frequire\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: which-key.nvim
time([[Config for which-key.nvim]], true)
try_loadstring("\27LJ\2\n2\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\23rmagatti.which-key\frequire\0", "config", "which-key.nvim")
time([[Config for which-key.nvim]], false)
-- Config for: auto-session
time([[Config for auto-session]], true)
try_loadstring("\27LJ\2\n5\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\26rmagatti.auto-session\frequire\0", "config", "auto-session")
time([[Config for auto-session]], false)
-- Config for: vim-dirvish
time([[Config for vim-dirvish]], true)
try_loadstring("\27LJ\2\n�\2\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0�\2      command! VLeftDirvish leftabove vsplit | vertical resize 50 | silent Dirvish\n      command! VLeftDirvishFile leftabove vsplit | vertical resize 50 | silent Dirvish %\n      nnoremap <leader>fs :VLeftDirvish<CR>\n      nnoremap <leader>ff :VLeftDirvishFile<CR>\n      \bcmd\bvim\0", "config", "vim-dirvish")
time([[Config for vim-dirvish]], false)
-- Config for: vim-dirvish-dovish
time([[Config for vim-dirvish-dovish]], true)
try_loadstring("\27LJ\2\n�\a\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0�\a        let g:dirvish_dovish_map_keys = 0\n\n        augroup dirvish_config\n        autocmd!\n        \" unmap dirvish default\n        autocmd FileType dirvish silent! unmap <buffer><C-p>\n        autocmd FileType dirvish silent! unmap <buffer>p\n\n        \" My mappings\n        autocmd FileType dirvish silent! map <buffer>i <Plug>(dovish_create_file)\n        autocmd FileType dirvish silent! map <buffer>I <Plug>(dovish_create_directory)\n        autocmd FileType dirvish silent! map <buffer>dd <Plug>(dovish_delete)\n        autocmd FileType dirvish silent! map <buffer>r <Plug>(dovish_rename)\n        autocmd FileType dirvish silent! map <buffer>yy <Plug>(dovish_yank)\n        autocmd FileType dirvish silent! map <buffer>yy <Plug>(dovish_yank)\n        autocmd FileType dirvish silent! map <buffer>p <Plug>(dovish_copy)\n        autocmd FileType dirvish silent! map <buffer>P <Plug>(dovish_move)\n        augroup END\n      \bcmd\bvim\0", "config", "vim-dirvish-dovish")
time([[Config for vim-dirvish-dovish]], false)
-- Config for: orgmode.nvim
time([[Config for orgmode.nvim]], true)
try_loadstring("\27LJ\2\n�\1\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\2\20org_agenda_file\22~/Documents/org/*\27org_default_notes_file\31~/Documents/org/refile.org\nsetup\forgmode\frequire\0", "config", "orgmode.nvim")
time([[Config for orgmode.nvim]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\n3\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\24rmagatti.treesitter\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: tokyonight.nvim
time([[Config for tokyonight.nvim]], true)
try_loadstring("\27LJ\2\n3\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\24rmagatti.tokyonight\frequire\0", "config", "tokyonight.nvim")
time([[Config for tokyonight.nvim]], false)
-- Load plugins in order defined by `after`
time([[Sequenced loading]], true)
vim.cmd [[ packadd nvim-treesitter-textsubjects ]]
vim.cmd [[ packadd nvim-ts-context-commentstring ]]
vim.cmd [[ packadd nvim-treesitter-textobjects ]]
time([[Sequenced loading]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
vim.cmd [[command! -nargs=* -range -bang -complete=file Gpull lua require("packer.load")({'vim-fugitive'}, { cmd = "Gpull", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]
vim.cmd [[command! -nargs=* -range -bang -complete=file Gvdiffsplit lua require("packer.load")({'vim-fugitive'}, { cmd = "Gvdiffsplit", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]
vim.cmd [[command! -nargs=* -range -bang -complete=file Telescope lua require("packer.load")({'telescope.nvim'}, { cmd = "Telescope", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]
vim.cmd [[command! -nargs=* -range -bang -complete=file TSPlaygroundToggle lua require("packer.load")({'playground'}, { cmd = "TSPlaygroundToggle", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]
vim.cmd [[command! -nargs=* -range -bang -complete=file JsDoc lua require("packer.load")({'vim-jsdoc'}, { cmd = "JsDoc", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]
vim.cmd [[command! -nargs=* -range -bang -complete=file ToggleTerm lua require("packer.load")({'nvim-toggleterm.lua'}, { cmd = "ToggleTerm", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]
vim.cmd [[command! -nargs=* -range -bang -complete=file ToggleTermOpenAll lua require("packer.load")({'nvim-toggleterm.lua'}, { cmd = "ToggleTermOpenAll", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]
vim.cmd [[command! -nargs=* -range -bang -complete=file ToggleTermCloseAll lua require("packer.load")({'nvim-toggleterm.lua'}, { cmd = "ToggleTermCloseAll", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]
vim.cmd [[command! -nargs=* -range -bang -complete=file EasyAlign lua require("packer.load")({'vim-easy-align'}, { cmd = "EasyAlign", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]
vim.cmd [[command! -nargs=* -range -bang -complete=file Bufferize lua require("packer.load")({'bufferize.vim'}, { cmd = "Bufferize", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]
vim.cmd [[command! -nargs=* -range -bang -complete=file CheatPaste lua require("packer.load")({'cheat.sh-vim'}, { cmd = "CheatPaste", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]
vim.cmd [[command! -nargs=* -range -bang -complete=file Cheat lua require("packer.load")({'cheat.sh-vim'}, { cmd = "Cheat", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]
vim.cmd [[command! -nargs=* -range -bang -complete=file Rg lua require("packer.load")({'vim-ripgrep'}, { cmd = "Rg", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]
vim.cmd [[command! -nargs=* -range -bang -complete=file StartupTime lua require("packer.load")({'vim-startuptime'}, { cmd = "StartupTime", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]
vim.cmd [[command! -nargs=* -range -bang -complete=file DiffviewOpen lua require("packer.load")({'diffview.nvim'}, { cmd = "DiffviewOpen", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]
vim.cmd [[command! -nargs=* -range -bang -complete=file LspTrouble lua require("packer.load")({'lsp-trouble.nvim'}, { cmd = "LspTrouble", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]
vim.cmd [[command! -nargs=* -range -bang -complete=file Neogit lua require("packer.load")({'neogit'}, { cmd = "Neogit", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]
vim.cmd [[command! -nargs=* -range -bang -complete=file Octo lua require("packer.load")({'octo.nvim'}, { cmd = "Octo", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]
vim.cmd [[command! -nargs=* -range -bang -complete=file TodoQuickFix lua require("packer.load")({'todo-comments.nvim'}, { cmd = "TodoQuickFix", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]
vim.cmd [[command! -nargs=* -range -bang -complete=file TodoTrouble lua require("packer.load")({'todo-comments.nvim'}, { cmd = "TodoTrouble", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]
vim.cmd [[command! -nargs=* -range -bang -complete=file TodoTelescope lua require("packer.load")({'todo-comments.nvim'}, { cmd = "TodoTelescope", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]
vim.cmd [[command! -nargs=* -range -bang -complete=file SymbolsOutlineOpen lua require("packer.load")({'symbols-outline.nvim'}, { cmd = "SymbolsOutlineOpen", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]
vim.cmd [[command! -nargs=* -range -bang -complete=file SymbolsOutlineClose lua require("packer.load")({'symbols-outline.nvim'}, { cmd = "SymbolsOutlineClose", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]
vim.cmd [[command! -nargs=* -range -bang -complete=file SymbolsOutline lua require("packer.load")({'symbols-outline.nvim'}, { cmd = "SymbolsOutline", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]
vim.cmd [[command! -nargs=* -range -bang -complete=file Git lua require("packer.load")({'vim-fugitive'}, { cmd = "Git", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]
vim.cmd [[command! -nargs=* -range -bang -complete=file Gstatus lua require("packer.load")({'vim-fugitive'}, { cmd = "Gstatus", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]
vim.cmd [[command! -nargs=* -range -bang -complete=file Gblame lua require("packer.load")({'vim-fugitive'}, { cmd = "Gblame", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]
vim.cmd [[command! -nargs=* -range -bang -complete=file Gpush lua require("packer.load")({'vim-fugitive'}, { cmd = "Gpush", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]
time([[Defining lazy-load commands]], false)

-- Keymap lazy-loads
time([[Defining lazy-load keymaps]], true)
vim.cmd [[nnoremap <silent> <leader>tt <cmd>lua require("packer.load")({'vim-test'}, { keys = "<lt>leader>tt", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[nnoremap <silent> <leader>dB <cmd>lua require("packer.load")({'nvim-dap'}, { keys = "<lt>leader>dB", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> gc <cmd>lua require("packer.load")({'vim-commentary'}, { keys = "gc", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[nnoremap <silent> <leader>3v <cmd>lua require("packer.load")({'nvim-toggleterm.lua'}, { keys = "<lt>leader>3v", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[nnoremap <silent> f <cmd>lua require("packer.load")({'lightspeed.nvim'}, { keys = "f", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[nnoremap <silent> <leader>ps <cmd>lua require("packer.load")({'telescope.nvim'}, { keys = "<lt>leader>ps", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[nnoremap <silent> <leader>tf <cmd>lua require("packer.load")({'vim-test'}, { keys = "<lt>leader>tf", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[nnoremap <silent> <leader>ws <cmd>lua require("packer.load")({'vimwiki'}, { keys = "<lt>leader>ws", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[nnoremap <silent> <leader>tf <cmd>lua require("packer.load")({'vim-test'}, { keys = "<lt>leader>tf", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[nnoremap <silent> s <cmd>lua require("packer.load")({'lightspeed.nvim'}, { keys = "s", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[nnoremap <silent> <leader>w<leader>w <cmd>lua require("packer.load")({'vimwiki'}, { keys = "<lt>leader>w<lt>leader>w", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[nnoremap <silent> <leader>b <cmd>lua require("packer.load")({'telescope.nvim'}, { keys = "<lt>leader>b", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[nnoremap <silent> <leader>tl <cmd>lua require("packer.load")({'vim-test'}, { keys = "<lt>leader>tl", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> <leader>wt <cmd>lua require("packer.load")({'git-worktree.nvim'}, { keys = "<lt>leader>wt", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[nnoremap <silent> <leader>hp <cmd>lua require("packer.load")({'vim-fugitive'}, { keys = "<lt>leader>hp", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[nnoremap <silent> gpd <cmd>lua require("packer.load")({'goto-preview'}, { keys = "gpd", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[nnoremap <silent> <leader>db <cmd>lua require("packer.load")({'nvim-dap'}, { keys = "<lt>leader>db", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> <leader>u <cmd>lua require("packer.load")({'undotree'}, { keys = "<lt>leader>u", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[nnoremap <silent> <leader>hR <cmd>lua require("packer.load")({'vim-fugitive'}, { keys = "<lt>leader>hR", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[nnoremap <silent> <leader>tdf <cmd>lua require("packer.load")({'vim-test'}, { keys = "<lt>leader>tdf", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[nnoremap <silent> <leader>sd <cmd>lua require("packer.load")({'telescope.nvim'}, { keys = "<lt>leader>sd", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> <leader>ss <cmd>lua require("packer.load")({'session-lens'}, { keys = "<lt>leader>ss", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[nnoremap <silent> <leader>tdv <cmd>lua require("packer.load")({'vim-test'}, { keys = "<lt>leader>tdv", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[nnoremap <silent> <leader>tv <cmd>lua require("packer.load")({'vim-test'}, { keys = "<lt>leader>tv", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[nnoremap <silent> <leader>4v <cmd>lua require("packer.load")({'nvim-toggleterm.lua'}, { keys = "<lt>leader>4v", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[nnoremap <silent> <leader>tdl <cmd>lua require("packer.load")({'vim-test'}, { keys = "<lt>leader>tdl", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[nnoremap <silent> <leader>tds <cmd>lua require("packer.load")({'vim-test'}, { keys = "<lt>leader>tds", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[nnoremap <silent> <leader>hb <cmd>lua require("packer.load")({'vim-fugitive'}, { keys = "<lt>leader>hb", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[nnoremap <silent> <leader>2s <cmd>lua require("packer.load")({'nvim-toggleterm.lua'}, { keys = "<lt>leader>2s", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> <leader>zz <cmd>lua require("packer.load")({'zen-mode.nvim'}, { keys = "<lt>leader>zz", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[nnoremap <silent> <leader>hs <cmd>lua require("packer.load")({'vim-fugitive'}, { keys = "<lt>leader>hs", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[nnoremap <silent> ys <cmd>lua require("packer.load")({'vim-surround'}, { keys = "ys", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[nnoremap <silent> <leader>wi <cmd>lua require("packer.load")({'vimwiki'}, { keys = "<lt>leader>wi", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[nnoremap <silent> <C-p> <cmd>lua require("packer.load")({'telescope.nvim'}, { keys = "<lt>C-p>", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[nnoremap <silent> F <cmd>lua require("packer.load")({'lightspeed.nvim'}, { keys = "F", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[nnoremap <silent> <leader>gb <cmd>lua require("packer.load")({'vim-fugitive'}, { keys = "<lt>leader>gb", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[nnoremap <silent> <leader>gd <cmd>lua require("packer.load")({'vim-fugitive'}, { keys = "<lt>leader>gd", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[xnoremap <silent> X <cmd>lua require("packer.load")({'vim-exchange'}, { keys = "X", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[nnoremap <silent> cx <cmd>lua require("packer.load")({'vim-exchange'}, { keys = "cx", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[nnoremap <silent> <leader>ts <cmd>lua require("packer.load")({'vim-test'}, { keys = "<lt>leader>ts", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[nnoremap <silent> <leader>3s <cmd>lua require("packer.load")({'nvim-toggleterm.lua'}, { keys = "<lt>leader>3s", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[nnoremap <silent> <leader>hu <cmd>lua require("packer.load")({'vim-fugitive'}, { keys = "<lt>leader>hu", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[nnoremap <silent> gs <cmd>lua require("packer.load")({'vim-grepper'}, { keys = "gs", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[nnoremap <silent> ds <cmd>lua require("packer.load")({'vim-surround'}, { keys = "ds", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[nnoremap <silent> <leader>KP <cmd>lua require("packer.load")({'cheat.sh-vim'}, { keys = "<lt>leader>KP", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[inoremap <silent> <C-\> <cmd>lua require("packer.load")({'nvim-toggleterm.lua'}, { keys = "<lt>C-\\>" }, _G.packer_plugins)<cr>]]
vim.cmd [[nnoremap <silent> <leader>2v <cmd>lua require("packer.load")({'nvim-toggleterm.lua'}, { keys = "<lt>leader>2v", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[nnoremap <silent> <leader>ts <cmd>lua require("packer.load")({'vim-test'}, { keys = "<lt>leader>ts", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[nnoremap <silent> <C-\> <cmd>lua require("packer.load")({'nvim-toggleterm.lua'}, { keys = "<lt>C-\\>", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[nnoremap <silent> <leader>hp <cmd>lua require("packer.load")({'vim-fugitive'}, { keys = "<lt>leader>hp", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[nnoremap <silent> <leader>KK <cmd>lua require("packer.load")({'cheat.sh-vim'}, { keys = "<lt>leader>KK", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[nnoremap <silent> <leader>KB <cmd>lua require("packer.load")({'cheat.sh-vim'}, { keys = "<lt>leader>KB", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[nnoremap <silent> <leader>4s <cmd>lua require("packer.load")({'nvim-toggleterm.lua'}, { keys = "<lt>leader>4s", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[nnoremap <silent> cs <cmd>lua require("packer.load")({'vim-surround'}, { keys = "cs", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> <leader>pl <cmd>lua require("packer.load")({'telescope-packer.nvim'}, { keys = "<lt>leader>pl", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[xnoremap <silent> S <cmd>lua require("packer.load")({'vim-surround'}, { keys = "S", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[nnoremap <silent> <leader>ww <cmd>lua require("packer.load")({'vimwiki'}, { keys = "<lt>leader>ww", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> <leader>ddo <cmd>lua require("packer.load")({'diffview.nvim'}, { keys = "<lt>leader>ddo", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> <C-n> <cmd>lua require("packer.load")({'vim-visual-multi'}, { keys = "<lt>C-n>", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[xnoremap <silent> gs <cmd>lua require("packer.load")({'vim-grepper'}, { keys = "gs", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[nnoremap <silent> S <cmd>lua require("packer.load")({'lightspeed.nvim'}, { keys = "S", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> <leader>xx <cmd>lua require("packer.load")({'lsp-trouble.nvim'}, { keys = "<lt>leader>xx", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[nnoremap <silent> gpi <cmd>lua require("packer.load")({'goto-preview'}, { keys = "gpi", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[nnoremap <silent> <leader>tf <cmd>lua require("packer.load")({'vim-test'}, { keys = "<lt>leader>tf", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[nnoremap <silent> gP <cmd>lua require("packer.load")({'goto-preview'}, { keys = "gP", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[nnoremap <silent> <leader>hr <cmd>lua require("packer.load")({'vim-fugitive'}, { keys = "<lt>leader>hr", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[nnoremap <silent> <leader>tt <cmd>lua require("packer.load")({'vim-test'}, { keys = "<lt>leader>tt", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[nnoremap <silent> <leader>tdt <cmd>lua require("packer.load")({'vim-test'}, { keys = "<lt>leader>tdt", prefix = "" }, _G.packer_plugins)<cr>]]
time([[Defining lazy-load keymaps]], false)

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType terraform ++once lua require("packer.load")({'vim-terraform'}, { ft = "terraform" }, _G.packer_plugins)]]
vim.cmd [[au FileType vimwiki ++once lua require("packer.load")({'vimwiki'}, { ft = "vimwiki" }, _G.packer_plugins)]]
vim.cmd [[au FileType javascript.jsx ++once lua require("packer.load")({'vim-jsdoc'}, { ft = "javascript.jsx" }, _G.packer_plugins)]]
vim.cmd [[au FileType typescript ++once lua require("packer.load")({'vim-jsdoc'}, { ft = "typescript" }, _G.packer_plugins)]]
vim.cmd [[au FileType markdown ++once lua require("packer.load")({'vimwiki'}, { ft = "markdown" }, _G.packer_plugins)]]
vim.cmd [[au FileType javascript ++once lua require("packer.load")({'vim-jsdoc'}, { ft = "javascript" }, _G.packer_plugins)]]
vim.cmd [[au FileType qf ++once lua require("packer.load")({'nvim-bqf'}, { ft = "qf" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au BufRead * ++once lua require("packer.load")({'gitsigns.nvim'}, { event = "BufRead *" }, _G.packer_plugins)]]
vim.cmd [[au BufReadPre * ++once lua require("packer.load")({'nvim-autopairs', 'nvim-compe', 'nvim-lspconfig', 'telescope-fzf-native.nvim', 'friendly-snippets', 'vim-vsnip-integ', 'vim-vsnip'}, { event = "BufReadPre *" }, _G.packer_plugins)]]
vim.cmd [[au BufReadPost * ++once lua require("packer.load")({'telescope-lsp-handlers.nvim', 'nvim-lspinstall', 'alternate-toggler', 'fzf', 'indent-blankline.nvim', 'nvim-lightbulb', 'vim-indent-object'}, { event = "BufReadPost *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")
vim.cmd [[augroup filetypedetect]]
time([[Sourcing ftdetect script at: /Users/ronnieandrewmagatti/.local/share/nvim/site/pack/packer/opt/vim-terraform/ftdetect/hcl.vim]], true)
vim.cmd [[source /Users/ronnieandrewmagatti/.local/share/nvim/site/pack/packer/opt/vim-terraform/ftdetect/hcl.vim]]
time([[Sourcing ftdetect script at: /Users/ronnieandrewmagatti/.local/share/nvim/site/pack/packer/opt/vim-terraform/ftdetect/hcl.vim]], false)
vim.cmd("augroup END")
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
