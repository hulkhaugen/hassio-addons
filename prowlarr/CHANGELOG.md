# Prowlarr Add-on

### 12.02.2024 - 1.13.3.4273 
  - Update to latest version [1.13.3.4273](https://github.com/linuxserver/docker-prowlarr/releases/tag/1.13.3.4273-ls52).

### 07.02.2024 - 1.12.2.4211 
  - Update to latest version [1.12.2.4211](https://github.com/linuxserver/docker-prowlarr/releases/tag/1.12.2.4211-ls51).
  - Changed version scheme to exclude minor Linuxserver specific versions.

### 31.01.2024 - 1.12.2.4211-ls50 
  - Update to latest version [1.12.2.4211-ls50](https://github.com/linuxserver/docker-prowlarr/releases/tag/1.12.2.4211-ls50).

### 24.01.2024 - 1.12.2.4211-ls49 
  - Update to latest version [1.12.2.4211-ls49](https://github.com/linuxserver/docker-prowlarr/releases/tag/1.12.2.4211-ls49).
  - Added `build.json` for specificity of image to pull based on arcitechure.

### 18.01.2024 - 1.12.2.4211-ls48
  - Update to latest version [1.12.2.4211-ls48](https://github.com/linuxserver/docker-prowlarr/releases/tag/1.12.2.4211-ls48).

### 17.01.2024 - 1.11.4.4173-ls47
  - Update to latest version [1.11.4.4173-ls47](https://github.com/linuxserver/docker-prowlarr/releases/tag/1.11.4.4173-ls47).
  - Fix permissions by setting PUID and PGID environment variables to 0.

### 12.01.2024 - 1.11.4.4173-ls46
  - Update to latest version [1.11.4.4173-ls46](https://github.com/linuxserver/docker-prowlarr/releases/tag/1.11.4.4173-ls46).
  - Excluding all Prowlarr files and folders except for the `Backups` folder from HA config to minimize HA backup file sizes. These backups are created weekly by Prowlarr, and can be managed in the Prowlarr GUI.

### 31.12.2023 - 1.11.4.4173-ls45
  - Update to latest version [1.11.4.4173-ls45](https://github.com/linuxserver/docker-prowlarr/releases/tag/1.11.4.4173-ls45).
  - Split up installations instructions from README.md to DOCS.md.
  - Added `rw` properties for the `media` and `share` folders.

### 16.12.2023 - 1.10.5.4116-ls43
  - Initial Add-on release based on [LinuxServer.io Prowlarr 1.10.5.4116-ls43](https://github.com/linuxserver/docker-prowlarr/releases/tag/1.10.5.4116-ls43).
