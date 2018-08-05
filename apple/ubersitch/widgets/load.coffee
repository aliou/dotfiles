refreshFrequency: '15s'

command: "uptime | cut -d ' ' -f 9-"

style: """
  bottom: 15px;
  left: 15px;
  color: #fff
  font: 11px SF Mono, Menlo;
"""

render: (output) -> "<div class='rocket'>🚀 #{output}</div>"
