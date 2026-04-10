-- stylua: ignore
local SPECIAL_KEYS = {
	"<Space>", "<Esc>", "<Enter>",
	"<Left>", "<Right>", "<Up>", "<Down>",
	"h", "j", "k", "l",
	"J", "K",
	"<A-j>", "<A-k>",
	"z",
	"<C-j>", "<C-k>",
	"y", "p",
}

-- stylua: ignore
local SINGLE_KEYS = {
	"p", "b", "e", "t", "a", "o", "i", "n", "s", "r", "h", "l", "d", "c",
	"u", "m", "f", "g", "w", "v", "k", "j", "x", "y", "q"
}

-- stylua: ignore
local NORMAL_DOUBLE_KEYS = {
	"au", "ai", "ao", "ah", "aj", "ak", "al", "an", "su", "si", "so", "sh",
	"sj", "sk", "sl", "sn", "du", "di", "do", "dh", "dj", "dk", "dl", "dn",
	"fu", "fi", "fo", "fh", "fj", "fk", "fl", "fn", "eu", "ei", "eo", "eh",
	"ej", "ek", "el", "en", "ru", "ri", "ro", "rh", "rj", "rk", "rl", "rn",
	"cu",

	"ci", "co", "ch", "cj", "ck", "cl", "cn", "wu", "wi", "wo", "wh", "wj",
	"wk", "wl", "wn", "tu", "ti", "to", "th", "tj", "tk", "tl", "tn", "vu",
	"vi", "vo", "vh", "vj", "vk", "vl", "vn", "xu", "xi", "xo", "xh", "xj",
	"xk", "xl", "xn", "bu", "bi", "bo", "bh", "bj", "bk", "bl", "qp", "qy",
	"qm",

	"bn", "qu", "qi", "qo", "qh", "qj", "qk", "ql", "qn", "ap", "ay", "am",
	"fp", "fy", "fm", "ep", "ey", "em", "sp", "sy", "sm", "dp", "dy", "dm",
	"rp", "ry", "rm", "cp", "cy", "cm", "wp", "wy", "wm",
	"xp", "xy", "xm", "tp", "ty", "tm", "vp", "vy", "vm", "bp", "by", "bm",

}

-- stylua: ignore
local GLOBAL_CURRENT_DOUBLE_KEYS = {
	"au", "ai", "ao", "ah", "aj", "ak", "al", "an", "su", "si", "so", "sh",
	"sj", "sk", "sl", "sn", "du", "di", "do", "dh", "dj", "dk", "dl", "dn",
	"fu", "fi", "fo", "fh", "fj", "fk", "fl", "fn", "eu", "ei", "eo", "eh",
	"ej", "ek", "el", "en", "ru", "ri", "ro", "rh", "rj", "rk", "rl", "rn",
	"cu",

	-- left hand double key
	"aq", "aw", "ae",
	"qw", "qe", "qr",
	"we", "wr", "wt",
	"er", "et", "es",
	"rt", "rs", "rd",
	"ts", "td", "tf",
	"sd", "sf", "sz",
	"ar", "at", "as",
	"qt", "qs", "qd",
	"ws", "wd", "wf",
	"ed", "ef", "ez",
	"rf", "rz", "rx",
	"tz", "tx", "tc",
	"sx", "sc", "sv",
	"ad", "af", "az",
	"qf", "qz", "qx",
	"wz", "wx", "wc",
	"ex", "ec", "ev",
	"rc", "rv", "rb",
	"tv", "tb", "fz",

}

-- stylua: ignore
local GLOBAL_PREVIEW_DOUBLE_KEYS = {
	"ci", "co", "ch", "cj", "ck", "cl", "cn", "wu", "wi", "wo", "wh", "wj",
	"wk", "wl", "wn", "tu", "ti", "to", "th", "tj", "tk", "tl", "tn", "vu",
	"vi", "vo", "vh", "vj", "vk", "vl", "vn", "xu", "xi", "xo", "xh", "xj",
	"xk", "xl", "xn", "bu", "bi", "bo", "bh", "bj", "bk", "bl", "qp", "qy",
	"qm",

	-- left hand double key
	"sb", "df", "dz",
	"ax", "ac", "av",
	"qc", "qv", "qb",
	"wv", "wb", "cv",
	"eb", "xc", "xv",
	"zx", "zc", "zv",
	"fx", "fc", "fv",
	"dx", "dc", "dv",
	"ab", "ba", "cb",
	"xb", "zb", "fb",
	"db", "vb", "qa",
	"wq", "ew", "re",
	"tr", "fd", "cx",
	"st", "zf", "vc",
	"ds", "xz", "bv",
	"wa", "vx", "cf",
	"eq", "bc", "vz",
	"rw", "ea", "bx",
	"te", "rq", "ra",
	"sr", "tw", "tq",
}

-- stylua: ignore
local GLOBAL_PARENT_DOUBLE_KEYS = {
	"bn", "qu", "qi", "qo", "qh", "qj", "qk", "ql", "qn", "ap", "ay", "am",
	"fp", "fy", "fm", "ep", "ey", "em", "sp", "sy", "sm", "dp", "dy", "dm",
	"rp", "ry", "rm", "cp", "cy", "cm", "wp", "wy", "wm", "xp", "xy", "xm", 
	"tp", "ty", "tm", "vp", "vy", "vm", "bp", "by", "bm",

	-- left hand double key
	"dt","se","sw",
	"fs","dr","de",
	"zd","ft","fr",
	"xf","zs","zt",
	"cz","xd","xs",
	"cd","cd","da",
	"vf","vf","fq",
	"bz","bz","zw",
	"ta","ta","xe",
	"sq","sq","cr",
	"dw","dw","vt",
	"fe","fe","bs",
	"zr","zr","fa",
	"xt","xt","zq",
	"cs","cs","xw",
	"ce","cw","vw",
	"vr","ve","be",
	"bt","br","ca",
	"za","xa","vq",
	"xq","cq","bw",

}

local INPUT_CANDS = {
	{ on = "a" }, { on = "b" }, { on = "c" }, { on = "d" }, { on = "e" },
	{ on = "f" }, { on = "g" }, { on = "h" }, { on = "i" }, { on = "j" },
	{ on = "k" }, { on = "l" }, { on = "m" }, { on = "n" }, { on = "o" },
	{ on = "p" }, { on = "q" }, { on = "r" }, { on = "s" }, { on = "t" },
	{ on = "u" }, { on = "v" }, { on = "w" }, { on = "x" }, { on = "y" },
	{ on = "z" }, { on = "<Esc>" },{ on = "<Backspace>" },{ on = "<Space>" },
	{ on = "<Enter>" },
	{ on = "<Left>" }, { on = "<Right>" }, { on = "<Up>" }, { on = "<Down>" },
	{ on = "<A-j>" }, { on = "<A-k>" },
	{ on = "<C-j>" }, { on = "<C-k>" },
	{ on = "J" }, { on = "K" },
	{ on = "<Tab>" }, { on = "<S-Tab>" },

}

local INPUT_KEY = {
	"a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n",
	"o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "<Esc>","<Backspace>","<Space>",
	"<Enter>",
	"<Left>", "<Right>" , "<Up>" , "<Down>" ,
	"<A-j>", "<A-k>" ,
	"<C-j>", "<C-k>" ,
	"J", "K",
	"<Tab>", "<S-Tab>",
}


local GO_MENU_KEYS = {
	"g",
}


-- TODO: the async jump is too fast, the current folder may cannot be found


-- FIXME: refactor this to avoid the loop
local function rel_position(file, view)
	local folder

	folder = cx.active.current
	if folder then
		for i, f in ipairs(folder.window) do
			if f.url == file.url then
				return i, "current"
			end
		end
	end

	if view == "current" then
		return nil, nil
	end

	folder = cx.active.parent
	if folder then
		for i, f in ipairs(folder.window) do
			if f.url == file.url then
				return i, "parent"
			end
		end
	end

	folder = cx.active.preview.folder
	if folder then
		for i, f in ipairs(folder.window) do
			if f.url == file.url then
				return i, "preview"
			end
		end
	end

	return nil, nil
end

-- FIXME: find a better way to do this
local function count_files(url, max)
	local cmd
	if ya.target_family() == "windows" then
		cmd = cx.active.pref.show_hidden and "dir /b /a " or "dir /b "
		cmd = cmd .. tostring(url)
		ya.err(cmd)
	else
		local target_cwd = '"'..tostring(url)..'"'
		cmd = cx.active.pref.show_hidden and "ls -A  " or "ls "
		cmd = 'test -r ' .. target_cwd .. ' && ' .. cmd .. target_cwd .. ' | wc -l'
	end

	if ya.target_family() == "windows" then
		local i, handle = 0, io.popen(cmd)
		for _ in handle:lines() do
			i = i + 1
			if max ~= math.huge and i == max then
				break
			end
		end
		handle:close()
		return i
	else
		local f = io.popen(cmd)
		local output = f:read("*all")
		local num = tonumber(output:sub(1,-2))
		f:close()
		if num == nil then
			return 0
		end

		if num > max then
			return max
		else
			return num
		end
	end
end

-- Compute the label and group for a file at position pos in a given label array
local function get_label_for_pos(label_array, pos, group_offset)
	local label_count = #label_array
	local group = math.ceil(pos / label_count) -- 1-based group number
	local label_idx = ((pos - 1) % label_count) + 1
	return label_array[label_idx], group, label_idx
end

local function get_max_group(file_count, label_count)
	if file_count == 0 or label_count == 0 then return 1 end
	return math.ceil(file_count / label_count)
end

local toggle_ui = ya.sync(function(st)

	if st.keep_hook then
		ui.render()
		return
	end

	if st.icon or st.mode then
		Entity.icon, Status.mode, st.icon, st.mode = st.icon, st.mode, nil, nil
		ya.mgr_emit("peek", { force = true })
		ui.render()
		return
	end

	st.icon, st.mode = Entity.icon, Status.mode

	Entity.icon = function(self)
		local file = self._file
		local icon = file:icon()
		local span_icon_before = file.is_hovered and ui.Span(file:icon().text .. " ") or ui.Span(file:icon().text .. " "):style(icon.style)
		local active_group = (st.group_offset or 0) + 1
		
		if st.type == "global" then
			local pos, view = rel_position(file, "all")
			if pos == nil then
				return st.icon(self, file)
			end

			local label_array
			if view == "current" then
				label_array = GLOBAL_CURRENT_DOUBLE_KEYS
			elseif view == "parent" then
				label_array = GLOBAL_PARENT_DOUBLE_KEYS
			elseif view == "preview" then
				label_array = GLOBAL_PREVIEW_DOUBLE_KEYS
			end

			if label_array then
				local label, group = get_label_for_pos(label_array, pos, st.group_offset)
				if group == active_group then
					if st.double_first_key ~= nil and label:sub(1,1) == st.double_first_key then
						return ui.Line {span_icon_before, ui.Span(label:sub(1,1)):fg(st.opt_first_key_fg),ui.Span(label:sub(2,2) .. " "):fg(st.opt_icon_fg)}
					else
						return ui.Line {span_icon_before, ui.Span(label.." "):fg(st.opt_icon_fg)}
					end
				else
					return ui.Line {span_icon_before, ui.Span("· "):fg("#666666")}
				end
			end
		else
			local pos = rel_position(file, "current")
			if not pos then
				return st.icon(self, file)
			elseif st.current_num > #SINGLE_KEYS then
				local label, group = get_label_for_pos(NORMAL_DOUBLE_KEYS, pos, st.group_offset)
				if group == active_group then
					if st.double_first_key ~= nil and label:sub(1,1) == st.double_first_key then
						return ui.Line {span_icon_before, ui.Span(label:sub(1,1)):fg(st.opt_first_key_fg),ui.Span(label:sub(2,2) .. " "):fg(st.opt_icon_fg)}
					else
						return ui.Line {span_icon_before, ui.Span(label.." "):fg(st.opt_icon_fg)}
					end
				else
					return ui.Line {span_icon_before, ui.Span("· "):fg("#666666")}
				end
			else
				return ui.Line {span_icon_before,ui.Span(SINGLE_KEYS[pos].." "):fg(st.opt_icon_fg)}
			end
		end
	end

	Status.mode = function(self)
		local style = self:style()
		local group_text = ""
		if st.max_groups and st.max_groups > 1 then
			group_text = " [" .. tostring((st.group_offset or 0) + 1) .. "/" .. tostring(st.max_groups) .. "]"
		end
		return ui.Line {
			ui.Span(" KJ-" .. tostring(cx.active.mode):upper() .. group_text .. " "):style(style.main),
		}
	end

	ya.mgr_emit("peek", { force = true })
	ui.render()
end)


local function split_yazi_cmd_arg(cmd)
	local cmd_table = {}
	for word in string.gmatch(cmd, "%S+") do
		table.insert(cmd_table, word)
	end
	return cmd_table
end

local function count_preview_files(st)
	local h = cx.active.current.hovered
	-- TODO:under_cursor_file maybe nil,because aync task,floder may not ready
	if h and h.cha.is_dir then
		st.preview_num = count_files(tostring(h.url), math.huge)
	else
		st.preview_num = 0
	end
end

local apply = ya.sync(function(state, arg_cand, arg_current_num, arg_parent_num, arg_preview_num)

	local cand = tonumber(arg_cand)
	local current_entry_num = tonumber(arg_current_num)
	local parent_entry_num = tonumber(arg_parent_num)
	local preview_entry_num = tonumber(arg_preview_num)
	local go_num = state.type == "global" and #GO_MENU_KEYS or 0
	local folder = cx.active.current

	-- hit specail key
	if cand > (current_entry_num + parent_entry_num + preview_entry_num + go_num) then
		local special_key_str = SPECIAL_KEYS[cand - current_entry_num - parent_entry_num - preview_entry_num - go_num]
		if special_key_str == "<Esc>" then
			return true
		elseif special_key_str == "z" then
			return true
		elseif special_key_str == "<Enter>" then
			ya.mgr_emit("open", {})
			return true
		elseif special_key_str == "<Left>" then
			ya.mgr_emit("leave", {})
			return false
		elseif special_key_str == "<Right>" then
			ya.mgr_emit("enter", {})
			return false
		elseif special_key_str == "<Up>" then
			ya.mgr_emit("arrow", { "-1" })
			return false
		elseif special_key_str == "<Down>" then
			ya.mgr_emit("arrow", { "1" })
			return false
		elseif special_key_str == "<Space>" then
			local under_cursor_file = cx.active.current.window[folder.cursor - folder.offset + 1]
			local toggle_state = under_cursor_file:is_selected() and "false" or "true"
			ya.mgr_emit("toggle", { state = toggle_state })
			ya.mgr_emit("arrow", { 1 })
			return false
		elseif special_key_str == "h"then
			if state.type == "global" then
				ya.mgr_emit("leave", {})
			end
			return false
		elseif special_key_str == "j"then
			if state.type == "global" then
				ya.mgr_emit("arrow", { "1" })
			end
			return false
		elseif special_key_str == "k"then
			if state.type == "global" then
				ya.mgr_emit("arrow", { "-1" })
			end
			return false
		elseif special_key_str == "l"then
			if state.type == "global" then			
				ya.mgr_emit("enter", {})
			end
			return false
		elseif special_key_str == "J" then
			ya.mgr_emit("arrow", { "5" })
			return false
		elseif special_key_str == "K" then
			ya.mgr_emit("arrow", { "-5" })
			return false
		elseif special_key_str == "<A-j>" then
			ya.mgr_emit("seek", { "5" })
			return false
		elseif special_key_str == "<A-k>" then
			ya.mgr_emit("seek", { "-5" })
			return false
		elseif special_key_str == "<C-j>" then
			ya.mgr_emit("arrow", { "100%" })
			return false
		elseif special_key_str == "<C-k>" then
			ya.mgr_emit("arrow", { "-100%" })
			return false
		elseif special_key_str == "y"then
			if state.type == "global" then
				ya.mgr_emit("yank", {})
			end
			return false
		elseif special_key_str == "p"then
			if state.type == "global" then
				ya.mgr_emit("paste", {})
			end
			return false

		end
	end

	-- apply global mode
	if state.type == "global" then
		-- hit current area
		if cand <= current_entry_num then -- hit normal key
			local current_folder = cx.active.current
			ya.mgr_emit("arrow", { cand - 1 + current_folder.offset - current_folder.cursor })
		-- hit parent area
		elseif cand > current_entry_num and cand <= (current_entry_num + parent_entry_num) then
			local parent_folder = cx.active.parent
			ya.mgr_emit("leave", {})
			ya.mgr_emit("arrow", { cand - current_entry_num - 1 + parent_folder.offset - parent_folder.cursor })
		-- hit preview area
		elseif
			cand > (current_entry_num + parent_entry_num) and cand <= (current_entry_num + parent_entry_num + preview_entry_num) then
			local preview_folder = cx.active.preview.folder
			ya.mgr_emit("enter", {})
			ya.mgr_emit(
				"arrow",
				{ cand - current_entry_num - parent_entry_num - 1 + cx.active.preview.skip - preview_folder.cursor }
			)

		-- hit go
		elseif cand > (current_entry_num + parent_entry_num + preview_entry_num) and cand <= (current_entry_num + parent_entry_num + preview_entry_num + go_num) then
			return nil
		end

		-- whether continue global
		if state.times == "once" then
			return true
		else
			return false
		end
	end

	-- apply select mode
	if state.type == "select" then
		if cand <= current_entry_num then -- hit normal key
			local folder = cx.active.current
			ya.mgr_emit("arrow", { cand - 1 + folder.offset - folder.cursor })
		end

		return false
	end

	-- apply keep mode and normal mode
	if (state.type == "keep" or not state.type) and folder.window[cand] then
		ya.mgr_emit("arrow", { cand - 1 + folder.offset - folder.cursor })
	end

	-- keep mode will auto enter when select folder and continue keep mode
	if state.type == "keep" and folder.window[cand] and folder.window[cand].cha.is_dir then
		ya.mgr_emit("enter", {})
		return false
	elseif folder.window[cand] == nil then
		return false
	else
		return true
	end

end)

local update_double_first_key = ya.sync(function(state, str)
	state.double_first_key = str
	ya.mgr_emit("peek", { force = true })
end)

local update_group_offset = ya.sync(function(state, offset)
	state.group_offset = offset
	ya.mgr_emit("peek", { force = true })
	ui.render()
end)

local recaculate_preview_num= ya.sync(function(state, cwd)
	state.preview_num = count_files(cwd, math.huge)
end)

local function build_cands(current_num, parent_num, preview_num, type, group_offset)
	local current_cands, parent_cands, preview_cands, cands = {}, {}, {}, {}
	local is_signal_cand = true
	local first_key_of_lable = {}
	local special_and_go_key = {}
	local cands_count = 0

	-- For group cycling, compute which files are in the active group for a given label array
	local function get_group_slice(label_array, total_count)
		local lc = #label_array
		local start_idx = group_offset * lc + 1
		local end_idx = math.min((group_offset + 1) * lc, total_count)
		local slice = {}
		for i = start_idx, end_idx do
			local label_idx = ((i - 1) % lc) + 1
			table.insert(slice, {label = label_array[label_idx], abs_pos = i})
		end
		return slice
	end

	-- generate cands of entry of current window
	if current_num == 0 then
		current_cands = {}
	elseif type == "global" then
		is_signal_cand = false
		current_cands = get_group_slice(GLOBAL_CURRENT_DOUBLE_KEYS, current_num)
	elseif current_num > #SINGLE_KEYS then
		is_signal_cand = false
		current_cands = get_group_slice(NORMAL_DOUBLE_KEYS, current_num)
	else
		current_cands = {}
		for i = 1, current_num do
			table.insert(current_cands, {label = SINGLE_KEYS[i], abs_pos = i})
		end
	end

	-- generate cands of entry of parent window
	if parent_num ~= nil and parent_num ~= 0 and type == "global" then
		is_signal_cand = false
		parent_cands = get_group_slice(GLOBAL_PARENT_DOUBLE_KEYS, parent_num)
	else
		parent_cands = {}
	end

	-- generate cands of entry of preview window
	if preview_num ~= nil and preview_num ~= 0 and type == "global" then
		is_signal_cand = false
		preview_cands = get_group_slice(GLOBAL_PREVIEW_DOUBLE_KEYS, preview_num)
	else
		preview_cands = {}
	end

	-- Build the cands mapping: label -> {pane, abs_pos}
	-- Also build a flat pos mapping for apply() compatibility:
	-- We encode: current files as abs_pos, parent as current_num + abs_pos, preview as current_num + parent_num + abs_pos
	-- This way apply() logic stays the same

	--attach current cands to cands table
	for i = 1, #current_cands do
		local entry = current_cands[i]
		first_key_of_lable[entry.label:sub(1,1)] = ""
		cands[entry.label] = entry.abs_pos  -- 1..current_num range
	end

	--attach parent cands to cands table
	for i = 1, #parent_cands do
		local entry = parent_cands[i]
		first_key_of_lable[entry.label:sub(1,1)] = ""
		cands[entry.label] = current_num + entry.abs_pos  -- current_num+1..current_num+parent_num range
	end

	--attach preview cands to cands table
	for i = 1, #preview_cands do
		local entry = preview_cands[i]
		first_key_of_lable[entry.label:sub(1,1)] = ""
		cands[entry.label] = current_num + parent_num + entry.abs_pos  -- current_num+parent_num+1.. range
	end

	--attach go cands to cands table
	if type == "global" then
		for i = 1, #GO_MENU_KEYS do
			local seca = GO_MENU_KEYS[i]
			first_key_of_lable[seca] = ""
			cands[seca] = current_num + parent_num + preview_num + i
			special_and_go_key[seca] = ""
		end
	end

	local go_num = type == "global" and #GO_MENU_KEYS or 0

	--attach special cands to cands table
	for i = 1, #SPECIAL_KEYS do
		local seca = SPECIAL_KEYS[i]
		first_key_of_lable[seca] = ""
		cands[seca] = current_num + parent_num + preview_num + go_num + i
		special_and_go_key[seca] = ""
	end

	return {
		cands = cands,
		is_signal_cand = is_signal_cand,
		first_key_of_lable = first_key_of_lable,
		special_and_go_key = special_and_go_key,
	}
end

local function read_input_todo (arg_current_num,arg_parent_num,arg_preview_num,arg_type,arg_max_groups)

	local current_num = tonumber(arg_current_num)
	local parent_num = tonumber(arg_parent_num~= nil and arg_parent_num or "0")
	local preview_num = tonumber(arg_preview_num ~= nil and arg_preview_num or "0")
	local type = arg_type
	local max_groups = tonumber(arg_max_groups or 1)
	local group_offset = 0

	local built = build_cands(current_num, parent_num, preview_num, type, group_offset)
	local cands = built.cands
	local is_signal_cand = built.is_signal_cand
	local first_key_of_lable = built.first_key_of_lable
	local special_and_go_key = built.special_and_go_key

	local cand = nil
	local pos,pos2
	local key_num_count = 0
	local key,double_key

	while true do
		cand = ya.which { cands = INPUT_CANDS, silent = true }
		-- not candy key, continue get input
		if cand == nil then
			goto nextkey
		end

		-- hit exit easyjump
		if INPUT_KEY[cand] == "<Esc>" or INPUT_KEY[cand] == "z"  then
			key = INPUT_KEY[cand]	
			pos = cands[key]
			break
		end

		-- handle Tab/S-Tab for group cycling
		if INPUT_KEY[cand] == "<Tab>" and max_groups > 1 then
			group_offset = (group_offset + 1) % max_groups
			update_group_offset(group_offset)
			built = build_cands(current_num, parent_num, preview_num, type, group_offset)
			cands = built.cands
			first_key_of_lable = built.first_key_of_lable
			special_and_go_key = built.special_and_go_key
			key_num_count = 0
			update_double_first_key(nil)
			goto nextkey
		end

		if INPUT_KEY[cand] == "<S-Tab>" and max_groups > 1 then
			group_offset = (group_offset - 1) % max_groups
			update_group_offset(group_offset)
			built = build_cands(current_num, parent_num, preview_num, type, group_offset)
			cands = built.cands
			first_key_of_lable = built.first_key_of_lable
			special_and_go_key = built.special_and_go_key
			key_num_count = 0
			update_double_first_key(nil)
			goto nextkey
		end

		-- hit singal key or specail key in singal label mode
		if is_signal_cand then
			key = INPUT_KEY[cand]	
			pos = cands[key.."-"]
			pos2 = cands[key]
			if pos then
				break
			elseif pos2 and type and type ~= "" then
				pos = pos2
				break
			else
				goto nextkey
			end
		end

		-- hit special key in double label mode
		if key_num_count == 0 and special_and_go_key[INPUT_KEY[cand]] then
			key = INPUT_KEY[cand]
			pos = cands[key]
			break
		end

		-- hit backout a double key
		if INPUT_KEY[cand] == "<Backspace>" and not is_signal_cand then
			key_num_count = 0 -- backout to get the first double key
			update_double_first_key(nil) -- apply to the render change for first key
			goto nextkey
		end

		-- hit the first double key
		if key_num_count == 0 and not is_signal_cand then
			key = INPUT_KEY[cand]
			if first_key_of_lable[key] then	 
				key_num_count =  key_num_count + 1		
				update_double_first_key(key) -- apply to the render change for first key
			else
				key_num_count = 0 -- get the first double key fail, continue to get it
			end
			goto nextkey
		end

		-- hit the second double key
		if key_num_count == 1 and not is_signal_cand then

			double_key = key .. INPUT_KEY[cand]
			pos = cands[double_key]

			if pos == nil then -- get the second double key fail, continue to get it
				goto nextkey
			else
				update_double_first_key(nil)
				break
			end
		end

		::nextkey::
	end

	return apply(pos, current_num, parent_num, preview_num)

end


local init_global_action = ya.sync(function(state,arg_times)

	-- "once" or nil,nil means to don't auto exit
	state.times = arg_times
	state.type = "global"
	state.group_offset = 0
	-- caculate file numbers of current window (actual count, not clamped)
	state.current_num = #cx.active.current.window
	if cx.active.parent and cx.active.parent.window then
		state.parent_num = #cx.active.parent.window
	else
		state.parent_num = 0
	end

	count_preview_files(state)

	-- compute max groups across all panes
	local max_g = 1
	max_g = math.max(max_g, get_max_group(state.current_num, #GLOBAL_CURRENT_DOUBLE_KEYS))
	max_g = math.max(max_g, get_max_group(state.parent_num, #GLOBAL_PARENT_DOUBLE_KEYS))
	max_g = math.max(max_g, get_max_group(state.preview_num, #GLOBAL_PREVIEW_DOUBLE_KEYS))
	state.max_groups = max_g

	return {state.current_num, state.parent_num, state.preview_num, state.max_groups}

end)

local init_normal_action = ya.sync(function(state,action)

	state.current_num = #cx.active.current.window
	if state.current_num < ui.Rect.default.h then -- Maybe the folder has not been full loaded yet
		state.current_num = count_files(cx.active.current.cwd, math.huge)
	end

	state.group_offset = 0
	if state.current_num > #SINGLE_KEYS then
		state.max_groups = get_max_group(state.current_num, #NORMAL_DOUBLE_KEYS)
	else
		state.max_groups = 1
	end

	state.type = action
	return {state.current_num, state.max_groups}
end)

local go_again = ya.sync(function(state)
	state.again = true
end)

local set_keep_hook = ya.sync(function(state,status)
	state.keep_hook = status
end)

local remove_cwd_status_watch = ya.sync(function(state)
	Header:children_remove(state.header_status_id)
end)

local clear_state = ya.sync(function (state)
	state.again = nil
	state.keep_hook = nil
	state.header_status_id = nil
	state.times = nil
	state.current_num = nil
	state.parent_num = nil
	state.parent_num = nil
	state.type = nil
	state.double_first_key = nil
	state.group_offset = nil
	state.max_groups = nil
end)

local get_go_table = ya.sync(function (state)
	return state.opt_go_table
end)


local add_cwd_status_watch = ya.sync(function(state)

	if state.header_status_id ~= nil then
		return
	end

	local function cwd_status(self)
		if ((#cx.active.current.window >0 and cx.active.current.hovered and cx.active.current.hovered.url) or state.preview_num == 0) and state.again then
			state.again = false
			local times = state.times and state.times or ""
			ya.mgr_emit("plugin", { "keyjump", ya.quote(state.type).." "..times})	
		end
		return ui.Line{}
	end
	state.header_status_id = Header:children_add(cwd_status,200,Header.LEFT)
end)

return {
	setup = function(state, opts)
		if (opts == nil or opts.icon_fg == nil) then
			state.opt_icon_fg = "#fda1a1"
		else
			state.opt_icon_fg  = opts.icon_fg
		end
		if (opts == nil or opts.first_key_fg == nil) then
			state.opt_first_key_fg = "#ffff33"
		else
			state.opt_first_key_fg  = opts.first_key_fg
		end
		

		if (opts == nil or opts.go_table == nil) then
			state.opt_go_table = {}

		else
			state.opt_go_table = opts.go_table
		end
	end,

	entry = function(_, job)
		add_cwd_status_watch()

		local args = job.args
		local action = args[1]
		local want_exit = false

		-- enter normal, keep or select mode
		if not action or action == "keep" or action == "select" then
			local data = init_normal_action(action)
			toggle_ui()
			want_exit = read_input_todo(data[1], "0", "0", action, data[2])
		end
		-- enter global mode
		if action == "global" then
			local times = args[2]
			local data = init_global_action(times)
			toggle_ui()
			want_exit = read_input_todo(data[1], data[2], data[3], action, data[4])
		end
		
		if want_exit == nil then
			local go_table = get_go_table()
			local cand
			while true do
				cand = ya.which { cands = go_table, silent = false }
				if cand ~= nil then
					break
				end
			end
			local cmd = split_yazi_cmd_arg(go_table[cand].run)
			recaculate_preview_num(cmd[2])
			ya.mgr_emit(cmd[1], { cmd[2], args=cmd[3] }) 
			set_keep_hook(true)
			go_again()
		elseif want_exit == false and action and action ~= "" then
			set_keep_hook(true)
			go_again()
		else
			set_keep_hook(false)
			remove_cwd_status_watch()
			clear_state()
		end

		toggle_ui()

	end
}
