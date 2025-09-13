# Discord Updater

A simple bash script to automatically download and install the latest version of Discord on Linux systems.

## Description

This script automates the process of updating Discord on Linux by:
1. Fetching the latest Discord .deb package URL from Discord's official API
2. Downloading the package
3. Installing it using `dpkg`
4. Cleaning up temporary files

## Features

- ✅ Automatically fetches the latest Discord version
- ✅ Downloads directly from Discord's official servers
- ✅ Installs the package with proper permissions
- ✅ Cleans up downloaded files after installation
- ✅ Error handling for failed downloads

## Prerequisites

- Linux system with `dpkg` support (Debian, Ubuntu, and derivatives)
- `curl` and `wget` installed
- `sudo` privileges for package installation
- Internet connection

## Installation

1. Clone this repository or download the script:
   ```bash
   git clone <repository-url>
   cd discord-updater
   ```

2. Make the script executable:
   ```bash
   chmod +x updater-discord.sh
   ```

## Usage

Run the script:
```bash
./updater-discord.sh
```

The script will:
1. Display a welcome message
2. Fetch the latest Discord download URL
3. Download the .deb package
4. Prompt for your sudo password
5. Install Discord
6. Remove the temporary .deb file

## Example Output

```
Discord Updater by xFr33z3...
✅ URL Found: https://dl.discordapp.net/apps/linux/0.0.xx/discord-0.0.xx.deb
✅ Download completed: discord.deb
Installing...
Insert root password to install the discord.deb file.
[sudo] password for user: 
```

## Error Handling

If the script cannot find the Discord download URL, it will display an error message and exit:
```
❌ Error: .deb file URL not found.
```

## Requirements

### System Packages
- `curl` - for fetching the download URL
- `wget` - for downloading the .deb package
- `dpkg` - for package installation

### Permissions
- The script requires `sudo` privileges to install the Discord package

## Troubleshooting

### Common Issues

1. **"Command not found" errors**: Ensure `curl` and `wget` are installed
   ```bash
   sudo apt update
   sudo apt install curl wget
   ```

2. **Permission denied**: Make sure the script is executable
   ```bash
   chmod +x updater-discord.sh
   ```

3. **Installation fails**: Check if you have sufficient disk space and proper permissions

## Security Notes

- The script downloads packages directly from Discord's official servers
- Always verify the script contents before running with sudo privileges
- The script uses HTTPS connections for secure downloads

## Author

Created by xFr33z3

## License

This project is open source. Feel free to modify and distribute as needed.

## Contributing

Feel free to submit issues, fork the repository, and create pull requests for any improvements.
