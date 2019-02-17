workflow "New workflow" {
  on = "push"
  resolves = ["Shellcheck"]
}

action "Shellcheck" {
  uses = "actions/bin/shellcheck@master"
  args = "*.sh"
}
