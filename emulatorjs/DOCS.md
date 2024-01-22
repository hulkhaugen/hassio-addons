## Installation

### Adding Add-on repository to Home Assistant

[![Open your Home Assistant instance and show the add add-on repository dialog with a specific repository URL pre-filled.](https://my.home-assistant.io/badges/supervisor_add_addon_repository.svg)](https://my.home-assistant.io/redirect/supervisor_add_addon_repository/?repository_url=https%3A%2F%2Fgithub.com%2Fhulkhaugen%2Fhassio-addons)

1. Open your **Home Assistant** instance.
2. Open `Settings` -> `Add-ons` and click on `Add-on Store`.
3. Click on the three dots in the upper right corner and select `Repositories`.
4. Paste https://github.com/hulkhaugen/hassio-addons and click `Add`.

### Installation
1. Locate **EmulatorJS** and click `Install`.
2. If you want to change the **EmulatorJS Frontend** port and/or the **EmulatorJS Manager** port, this can be done in the `Configuration` tab.
3. Once the installation has finnished, you can start the Add-on.
4. Go to the `EmulatorJS Manager` at http://\<your-server-ip\>:\<port\> and download the default fileset.
5. Copy Rom files (games) to the corresponding folders at `/addon_configs/5ec262d9_emulatorjs/data/<system>/roms/`.
6. Click on `Scan` roms for the relevant emulator(s).
7. Click on the emulator(s) in the left column to manage art and click `Add All Roms to Config`.
8. Click on the **Web UI** and play some games.

This container can also be started without IPFS once your collection is set by creating an empty file named `disable_ipfs` in `/addon_configs/5ec262d9_emulatorjs/`. Note that the filename matching logic is `disable_ipfs*`, so renaming it to `.bak` or `.off` won't change anything. 

More info can be found at [Linuxserver.io - EmulatorJS](https://docs.linuxserver.io/images/docker-emulatorjs/).