#!/bin/bash
xrandr					\
	--output HDMI-1 --off		\
	--output DP-1   --off		\
	--output eDP-1  --off		\
	--output HDMI-2			\
		--mode 1680x1050	\
		--pos 0x0		\
		--rotate normal		\
		--primary
xrandr --output HDMI-2 --primary

cmd=$(grep '/usr/bin/feh' ~/.i3/config | sed 's/exec --no-startup-id //')
eval ${cmd}
i3-msg restart
