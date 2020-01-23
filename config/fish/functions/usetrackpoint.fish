# Defined in /tmp/fish.ahJue5/usetrackpoint.fish @ line 2
function usetrackpoint
	# for touchpad
	# xset m 5 0
    # xinput set-prop 16 'Device Accel Profile' 2

    # for trackpoint
	xset m 10 0
    xinput set-prop 'TPPS/2 IBM TrackPoint' 'Device Accel Profile' 6
end
