# Prowlarr Add-on

### 27.09.2024 - 1.24.3.4754 
  - Update to latest version [1.24.3.4754](https://github.com/linuxserver/docker-prowlarr/releases/tag/1.24.3.4754-ls88).

### 02.09.2024 - 1.23.1.4708 
  - Update to latest version [1.23.1.4708](https://github.com/linuxserver/docker-prowlarr/releases/tag/1.23.1.4708-ls84).

### 28.07.2024 - 1.21.2.4649 
  - Update to latest version [1.21.2.4649](https://github.com/linuxserver/docker-prowlarr/releases/tag/1.21.2.4649-ls80).

### 07.07.2024 - 1.20.1.4603 
  - Update to latest version [1.20.1.4603](https://github.com/linuxserver/docker-prowlarr/releases/tag/1.20.1.4603-ls77).

### 23.06.2024 - 1.19.0.4568 
  - Update to latest version [1.19.0.4568](https://github.com/linuxserver/docker-prowlarr/releases/tag/1.19.0.4568-ls75).

### 02.06.2024 - 1.18.0.4543 
  - Update to latest version [1.18.0.4543](https://github.com/linuxserver/docker-prowlarr/releases/tag/1.18.0.4543-ls73).

### 13.05.2024 - 1.17.2.4511 
  - Update to latest version [1.17.2.4511](https://github.com/linuxserver/docker-prowlarr/releases/tag/1.17.2.4511-ls69).

### 20.04.2024 - 1.16.2.4435 
  - Update to latest version [1.16.2.4435](https://github.com/linuxserver/docker-prowlarr/releases/tag/1.16.2.4435-ls66).

### 28.03.2024 - 1.15.0.4361 
  - Update to latest version [1.15.0.4361](https://github.com/linuxserver/docker-prowlarr/releases/tag/1.15.0.4361-ls62).

### 18.03.2024 - 1.14.3.4333 
  - Update to latest version [1.14.3.4333](https://github.com/linuxserver/docker-prowlarr/releases/tag/1.14.3.4333-ls58).

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
