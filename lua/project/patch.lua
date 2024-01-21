function patch(config)
  local cwd = vim.fn.getcwd(-1, -1)

  if cwd == '/home/vanya/mycore/mashtab/zenator/repo/core-base' then
    config.pylsp_plugins.ruff.enabled = false
    config.pylsp_plugins.isort.enabled = true
    config.pylsp_plugins.pydocstyle.enabled = true
    config.pylsp_plugins.flake8.enabled = true
    config.pylsp_plugins.yapf.enabled = true

    config.formatters.python = { 'yapf', 'isort' }
  end
end

return { patch = patch }
