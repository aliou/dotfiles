refreshFrequency: '15s'

command: "sysctl -n vm.loadavg | awk '{printf \"%s %s %s\",$2,$3,$4}'"

style: """
  bottom: 15px;
  left: 15px;
  color: #fff
  font: 11px SF Mono, Menlo;
"""

render: (output) -> "<div class='rocket'>🚀 #{output}</div>"
