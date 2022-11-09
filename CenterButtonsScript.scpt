on runme(message)
	if (item 1 of message = 144) and (item 2 of message = 101) and (item 3 of message = 127) then 
		tell application "System Events"  to key code 36
	end if
	if (item 1 of message = 144) and (item 2 of message = 84) and (item 3 of message = 127) then 
		tell application "System Events"  to keystroke "c"
	end if
	if (item 1 of message = 144) and (item 2 of message = 100) and (item 3 of message = 127) then 
		tell application "System Events"  to key code 51
	end if
end runme
