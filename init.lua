require("base")
require("highlight")
require("maps")
require("plugins")

local has = function(x)
	return vim.fn.has(x) == 1
end

local is_mac = has("macunix")
local is_win = has("win32")
local is_linux = has("unix") and not is_mac

if is_mac then
	require("macos")
end

if is_win then
	require("windows")
end

if is_linux then
	require("linux")
end
