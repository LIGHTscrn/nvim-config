local dap = require('dap')

dap.configurations.python = {
  {
    type = 'python',
    request = 'launch',
    name = 'Launch file',
    program = '${file}',
    pythonPath = function()
      local python_path = vim.fn.input("Path to python interpreter: ", vim.fn.getcwd() .. "/.venv/bin/python", "file")

      -- Dynamically set adapter when config is run
      dap.adapters.python = {
        type = 'executable',
        command = python_path,
        args = { '-m', 'debugpy.adapter' },
      }

      return python_path
    end,
  },
}

