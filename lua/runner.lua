function Runner()
    local ft_cmds = {
        python = "python3",
        cpp = "g++ % && ./a.out",
        c = "c % && ./a.out",
        java = "java %",
        lua = "lua",
        sh = "bash",
    }

    local ft = vim.bo.filetype
    local cmd = ft_cmds[ft]

    if cmd then
        vim.cmd(math.floor(vim.o.columns*0.4) .. "vsplit | term " .. cmd .. " " .. vim.fn.expand("%"))
    else
        print("idk " .. ft)
    end
end
