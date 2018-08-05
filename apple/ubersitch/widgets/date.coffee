refreshFrequency: '1d'

command: "date +'%Y-%m-%d'"

style: """
  bottom: 35px;
  left: 15px;
  color: #fff
  font: 11px SF Mono, Menlo;
"""

render: (output) -> "<div class='rocket'>📅 #{output}</div>"
