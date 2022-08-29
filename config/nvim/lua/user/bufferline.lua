require('bufferline').setup
{
    options =
    {
        numbers =  "none",
		--number_style = "superscript",
		close_command = "bdelete! %d",
		left_mouse_command = "buffer %d",
		middle_mouse_command = "bdelete! %d",
		right_mouse_command = nil,
		-- indicator_icon = '▎',
		buffer_close_icon = '',
		modified_icon = '●',
		close_icon = '',
		left_trunc_marker = '',
		right_trunc_marker = '',
	    name_formatter = function(buf)
		  -- remove extension from markdown files for example
		  if buf.name:match('%.md') then
			return vim.fn.fnamemodify(buf.name, ':t:r')
		  end
		end,
		max_name_length = 18,
		max_prefix_length = 15,
		tab_size = 18,
		diagnostics = "nvim_lsp",
		diagnostics_update_in_insert = false,
		diagnostics_indicator = function(count)
		  return "("..count..")"
		end,
	  custom_filter = function(buf_number)
		  -- filter out filetypes you don't want to see
		  if vim.bo[buf_number].filetype ~= "<i-dont-want-to-see-this>" then
			return true
		  end
		  -- filter out by buffer name
		  if vim.fn.bufname(buf_number) ~= "<buffer-name-I-dont-want>" then
			return true
		  end
		  -- filter out based on arbitrary rules
		  -- e.g. filter out vim wiki buffer from tabline in your work repo
		  if vim.fn.getcwd() == "<work-repo>" and vim.bo[buf_number].filetype ~= "wiki" then
			return true
		  end
		end,
  		offsets = {{filetype = "NvimTree", text = "File Explorer", text_align = "center"}},
	  	show_buffer_icons = true , -- disable filetype icons for buffers
		show_buffer_close_icons = true ,
		show_close_icon = true ,
		show_tab_indicators = true ,
		persist_buffer_sort = true,
	  	-- separator_style = "slant" ,
	  	separator_style = "thin",
		enforce_regular_tabs = true,
		always_show_bufferline = true ,
		sort_by = 'id',
		function(buffer_a, buffer_b)
		  -- add custom logic
		  return buffer_a.modified > buffer_b.modified
		end
	};
 }

vim.cmd[[
nnoremap <silent><TAB> :BufferLineCycleNext<CR>
nnoremap <silent><S-TAB> :BufferLineCyclePrev<CR>
]]

