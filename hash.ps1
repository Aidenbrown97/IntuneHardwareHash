# Create a new directory on the USB drive where the script is located
$OutputDirectory = Join-Path -Path $PSScriptRoot -ChildPath "HWID"
New-Item -Type Directory -Path $OutputDirectory -Force

# Change the current location to the new directory
Set-Location -Path $OutputDirectory

# Optionally add the Windows PowerShell Scripts path to the system's PATH environment variable for the current session
# This step might not be necessary for saving the file, but it's useful if you're relying on scripts located in this directory.
$env:Path += ";C:\Program Files\WindowsPowerShell\Scripts"

# Set the execution policy for the current process to allow script execution
# Be cautious with execution policies and ensure this complies with your security policies.
Set-ExecutionPolicy -Scope Process -ExecutionPolicy RemoteSigned

# Install the Get-WindowsAutopilotInfo script from the PowerShell Gallery
# This command installs the script if it's not already installed.
Install-Script -Name Get-WindowsAutopilotInfo -Scope CurrentUser -Force

# Run the Get-WindowsAutopilotInfo script and save the output CSV to the USB drive
Get-WindowsAutopilotInfo -OutputFile "$OutputDirectory\AutopilotHWID.csv"
