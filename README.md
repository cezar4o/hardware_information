# Hardware Information HTML Report Generator

## Description

This PowerShell script retrieves hardware information from a computer and generates an HTML report to present essential details about the CPU, RAM, and hard disks. The generated HTML report displays this information in a structured and user-friendly format.

## Usage Instructions

1. Open a PowerShell terminal on the target computer.

2. Navigate to the directory containing the script using the `cd` command:

3. Run the script by executing the following command:


4. After execution, a file named "hardware_info.html" will be generated in the same directory.

5. Open the "hardware_info.html" file using your preferred web browser to view the hardware information report.

## Script Details

The script performs the following actions:

- Retrieves the computer name using the `$env:COMPUTERNAME` environment variable.
- Gathers CPU information, including CPU name, number of cores, and logical processors.
- Calculates and displays the installed RAM in gigabytes.
- Retrieves information about each hard disk drive, including model and capacity.
- Generates an HTML table to organize the gathered hardware information.
- Saves the HTML content to a file named "hardware_info.html" in UTF-8 encoding.
- Opens the generated HTML file in the default web browser for easy viewing.

## Note

- This script utilizes PowerShell's WMI (Windows Management Instrumentation) capabilities to gather hardware information. Ensure that you have the necessary permissions to run WMI queries on the target computer.

- The generated HTML report provides a snapshot of the hardware information at the time of execution. It may not reflect changes made to the hardware configuration after running the script.

- The script is intended for informational purposes and should not be used for any unauthorized access or data extraction.

## License

This script is provided under the MIT license. See the [LICENSE](LICENSE) file for more details.

---
**Disclaimer:** The provided script is for educational and informational purposes only. Use it responsibly and adhere to applicable laws and regulations.
