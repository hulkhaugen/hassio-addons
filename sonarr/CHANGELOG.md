# Sonarr Add-on

### 26.10.2024 - 4.0.10.2544 
  - Update to latest version [4.0.10.2544](https://github.com/linuxserver/docker-sonarr/releases/tag/4.0.10.2544-ls258).

### 26.08.2024 - 4.0.9.2244 
  - Update to latest version [4.0.9.2244](https://github.com/linuxserver/docker-sonarr/releases/tag/4.0.9.2244-ls252).

### 16.07.2024 - 4.0.8.1874 
  - Update to latest version [4.0.8.1874](https://github.com/linuxserver/docker-sonarr/releases/tag/4.0.8.1874-ls248).

### 15.07.2024 - 4.0.7.1863 
  - Update to latest version [4.0.7.1863](https://github.com/linuxserver/docker-sonarr/releases/tag/4.0.7.1863-ls247).

### 04.07.2024 - 4.0.6.1805 
  - Update to latest version [4.0.6.1805](https://github.com/linuxserver/docker-sonarr/releases/tag/4.0.6.1805-ls244).

### 30.05.2024 - 4.0.5.1710 
  - Update to latest version [4.0.5.1710](https://github.com/linuxserver/docker-sonarr/releases/tag/4.0.5.1710-ls240).

### 13.04.2024 - 4.0.4.1491 
  - Update to latest version [4.0.4.1491](https://github.com/linuxserver/docker-sonarr/releases/tag/4.0.4.1491-ls235).

### 03.04.2024 - 4.0.3.1413 
  - Update to latest version [4.0.3.1413](https://github.com/linuxserver/docker-sonarr/releases/tag/4.0.3.1413-ls233).

### 27.02.2024 - 4.0.2.1183 
  - Update to latest version [4.0.2.1183](https://github.com/linuxserver/docker-sonarr/releases/tag/4.0.2.1183-ls229).

### 03.02.2024 - 4.0.1.929 
  - Update to latest version [4.0.1.929](https://github.com/linuxserver/docker-sonarr/releases/tag/4.0.1.929-ls224).
  - Changed version scheme to exclude minor Linuxserver specific versions.

### 27.01.2024 - 4.0.1.929-ls223 
  - Update to latest version [4.0.1.929-ls223](https://github.com/linuxserver/docker-sonarr/releases/tag/4.0.1.929-ls223).

### 20.01.2024 - 4.0.1.929-ls222
  - Reverted version scheme to use ls-tags and update to latest version [4.0.1.929-ls222](https://github.com/linuxserver/docker-sonarr/releases).

### 18.01.2024 - 4.0.0.748
  - Changed version scheme to ignore ls-tags and just use latest Sonarr version [4.0.0.748](https://github.com/linuxserver/docker-sonarr/releases).
  - Added `build.json` for specificity of image to pull based on arcitechure.
  - Fix permissions by setting PUID and PGID environment variables to 0.

### 12.01.2024 - 4.0.0.748-ls221
  - Update to latest version [4.0.0.748-ls221](https://github.com/linuxserver/.docker-sonarr/releases/tag/4.0.0.748-ls221)
  - Excluding all Sonarr files and folders except for the `Backups` folder from HA config to minimize HA backup file sizes. These backups are created weekly by Sonarr, and can be managed in the Sonarr GUI.

### 01.01.2024 - 4.0.0.748-ls220
  - Update to latest version [4.0.0.748-ls220](https://github.com/linuxserver/docker-sonarr/releases/tag/4.0.0.748-ls220).

### 30.12.2023 - 4.0.0.741-ls219
  - Update to latest version [4.0.0.741-ls219](https://github.com/linuxserver/docker-sonarr/releases/tag/4.0.0.741-ls219).
  - Split up installations instructions from README.md to DOCS.md.

### 25.12.2023 - 3.0.10.1567-ls218
  - Update to latest version [3.0.10.1567-ls218](https://github.com/linuxserver/docker-sonarr/releases/tag/3.0.10.1567-ls218).

### 16.12.2023 - 3.0.10.1567-ls217
  - Initial Add-on release based on [LinuxServer.io Sonarr 3.0.10.1567-ls217](https://github.com/linuxserver/docker-sonarr/releases/tag/3.0.10.1567-ls217).
