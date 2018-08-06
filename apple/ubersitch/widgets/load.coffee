refreshFrequency: '15s'

command: "sysctl -n vm.loadavg | awk '{printf \"%s %s %s\",$2,$3,$4}'"

render: (output) -> "<div class='screen'><div class='load'>🚀 #{output}</div></div>"
