# Radarr Add-on

### 13.05.2024 - 5.5.3.8819 
  - Update to latest version [5.5.3.8819](https://github.com/linuxserver/docker-radarr/releases/tag/5.5.3.8819-ls218).

### 13.04.2024 - 5.4.6.8723 
  - Update to latest version [5.4.6.8723](https://github.com/linuxserver/docker-radarr/releases/tag/5.4.6.8723-ls213).

### 18.02.2024 - 5.3.6.8612 
  - Update to latest version [5.3.6.8612](https://github.com/linuxserver/docker-radarr/releases/tag/5.3.6.8612-ls204).

### 04.02.2024 - 5.2.6.8376 
  - Update to latest version [5.2.6.8376](https://github.com/linuxserver/docker-radarr/releases/tag/5.2.6.8376-ls202).
  - Changed version scheme to exclude minor Linuxserver specific versions.

### 28.01.2024 - 5.2.6.8376-ls201 
  - Update to latest version [5.2.6.8376-ls201](https://github.com/linuxserver/docker-radarr/releases/tag/5.2.6.8376-ls201).

### 21.01.2024 - 5.2.6.8376-ls200 
  - Update to latest version [5.2.6.8376-ls200](https://github.com/linuxserver/docker-radarr/releases/tag/5.2.6.8376-ls200)
  - Split up installations instructions from README.md to DOCS.md
  - Added `build.json` for specificity of image to pull based on arcitechure.

### 14.01.2024 - 5.2.6.8376-ls199
  - Update to latest version [5.2.6.8376-ls199](https://github.com/linuxserver/docker-radarr/releases/tag/5.2.6.8376-ls199)
  - Fix permissions by setting PUID and PGID environment variables to 0

### 12.01.2024 - 5.2.6.8376-ls198
  - Update to latest version [5.2.6.8376-ls198](https://github.com/linuxserver/docker-radarr/releases/tag/5.2.6.8376-ls198)
  - Excluding all Radarr files and folders except for the `Backups` folder from HA config to minimize HA backup file sizes. These backups are created weekly by Radarr, and can be managed in the Radarr GUI

### 25.12.2023 - 5.2.6.8376-ls197
  - Update to latest version [5.2.6.8376-ls197](https://github.com/linuxserver/docker-radarr/releases/tag/5.2.6.8376-ls197)

### 16.12.2023 - 5.1.3.8246-ls196
  - Initial Add-on release based on [LinuxServer.io Radarr 5.1.3.8246-ls196](https://github.com/linuxserver/docker-radarr/releases/tag/5.1.3.8246-ls196)
