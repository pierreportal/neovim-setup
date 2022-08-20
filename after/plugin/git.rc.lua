local status, git = pcall(require, 'git')
if not status then return end

git.setup {
  keymap = {
    blame = '<Leader>b',
    browse = '<Leader>o',
    diff = '<Leader>d',
    diff_close = '<Leader>e',
  }
}
