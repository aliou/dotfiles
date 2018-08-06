refreshFrequency: '1d'

command: "date +'%Y-%m-%d'"

render: (output) -> "<div class='screen'><div class='date'>📅 #{output}</div></div>"
