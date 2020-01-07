load: unload cp
	launchctl load -w "$(HOME)/Library/LaunchAgents/boot-shutdown-script.plist"

cp:
	cp boot-shutdown-script.plist  "$(HOME)/Library/LaunchAgents/"

unload:
	launchctl unload -w "$(HOME)/Library/LaunchAgents/boot-shutdown-script.plist"
