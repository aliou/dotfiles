function hg_in_repo() {
  hg branch 2> /dev/null | awk '{print "on "}'
}

function hg_dirty() {
  hg status --no-color 2> /dev/null \
    | awk '$1 == "?" { print "?" } $1 != "?" { print "!" }' \
    | sort | uniq | head -c1
}

function hg_branch() {
  hg branch 2> /dev/null | awk '{print $1}'
}

function hg_prompt() {
  hg branch 2> /dev/null > /dev/null && echo "($(hg_branch)$(hg_dirty))"
}
