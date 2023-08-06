vim.cmd([[
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['eslint'],
\   'typescript': ['eslint'],
\   'typescriptreact': ['eslint'],
\   'javascriptreact': ['eslint'],
\   'javascript.jsx': ['eslint'],
\   'typescript.jsx': ['eslint'],
\   'html': ['prettier'],
\}
]])

vim.g.ale_sign_error = '>>'
vim.g.ale_sign_warning = '--'
vim.g.ale_echo_msg_error_str = 'E'
vim.g.ale_echo_msg_warning_str = 'W'
vim.g.ale_echo_msg_format = '[%linter%] %s [%severity%]'
vim.g.ale_python_flake8_options = '--max-line-length 88 --extend-ignore=E203'
vim.g.ale_fix_on_save=1
