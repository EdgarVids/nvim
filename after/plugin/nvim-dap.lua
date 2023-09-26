local dap = require('dap')

dap.adapters.coreclr = {
  type = 'executable',
  command = '/home/dm/.local/share/nvim/mason/bin/netcoredbg',
  args = {'--interpreter=vscode'}
}

dap.configurations.cs = {
  {
    type = "coreclr",
    name = "launch - netcoredbg",
    request = "launch",
    program = function()
        dir =vim.fn.fnamemodify(vim.fn.getcwd(), ":t")
        return vim.fn.input('Path to dll', vim.fn.getcwd() .. '/bin/Debug/net7.0/' .. dir .. '.dll', 'file' )
    end,
  },
}

--nnoremap <silent> <F5> <Cmd>lua require'dap'.continue()<CR>
--nnoremap <silent> <F10> <Cmd>lua require'dap'.step_over()<CR>
--nnoremap <silent> <F11> <Cmd>lua require'dap'.step_into()<CR>
--nnoremap <silent> <F12> <Cmd>lua require'dap'.step_out()<CR>
--nnoremap <silent> <Leader>b <Cmd>lua require'dap'.toggle_breakpoint()<CR>
--nnoremap <silent> <Leader>B <Cmd>lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>
--nnoremap <silent> <Leader>lp <Cmd>lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<CR>
--nnoremap <silent> <Leader>dr <Cmd>lua require'dap'.repl.open()<CR>
--nnoremap <silent> <Leader>dl <Cmd>lua require'dap'.run_last()<CR>
