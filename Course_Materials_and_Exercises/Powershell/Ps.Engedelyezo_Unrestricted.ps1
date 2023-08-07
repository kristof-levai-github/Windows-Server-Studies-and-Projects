# Get-ExecutionPolicy

Set-ExecutionPolicy Unrestricted -Force
	
	# Bypass. Nothing is blocked and there are no warnings or prompts.
	
	# Unrestricted. Beginning in PowerShell 6.0, this is the default execution policy for non-Windows computers and can't be changed. 
		# Loads all configuration files and runs all scripts. 
		# If you run an unsigned script that was downloaded from the internet, you're prompted for permission before it runs.