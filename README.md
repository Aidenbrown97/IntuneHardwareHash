# Windows Autopilot Hardware ID Extraction Script

This script is designed to extract the hardware ID (HWID) of a device and save it to a CSV file for use with Windows Autopilot. This allows for the automation of device enrollment into Microsoft Intune for management.

## Prerequisites

Before running this script, ensure the following requirements are met:

- PowerShell 5.1 or later is installed on your computer.
- You have administrative privileges on the device where the script will be run.
- The `Set-ExecutionPolicy` cmdlet is used to adjust the PowerShell execution policy. This script temporarily allows the execution of scripts for the current PowerShell session. Ensure this aligns with your organization's security policies.

## Instructions

1. **Open PowerShell as an Administrator.** Right-click the Start button, select "Windows PowerShell (Admin)" or "Windows Terminal (Admin)," and confirm any prompts.

2. **Prepare the Environment.** Copy and paste the entire script into the PowerShell window and press Enter. The script performs the following actions:
    - Creates a new directory `C:\HWID` to store the output file.
    - Adds the Windows PowerShell Scripts path to the system's PATH environment variable for the current session.
    - Sets the execution policy for the current process to allow script execution.
    - Installs the `Get-WindowsAutopilotInfo` script from the PowerShell Gallery.
    - Executes the `Get-WindowsAutopilotInfo` script to generate the `AutopilotHWID.csv` file, containing the hardware ID information, and saves it to the `C:\HWID` directory.

3. **Locate the Output File.** Navigate to `C:\HWID` to find the `AutopilotHWID.csv` file. This file is ready for upload to Microsoft Intune for device enrollment.

## Running the Script

- This script changes the execution policy for the process to `RemoteSigned`. This is a temporary change and applies only to the current PowerShell session.
- If you encounter errors related to execution policies or script not found, ensure you're running PowerShell as Administrator and your internet connection is active since the script attempts to download components from the internet.
- For security reasons, review scripts before running them, especially those that change system settings or download content from the Internet.

## Note

This README and the accompanying PowerShell script are provided "as is," with no warranties, and confer no rights. Always test scripts in a non-production environment before rolling them out organization-wide.
