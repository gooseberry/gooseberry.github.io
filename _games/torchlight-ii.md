---
title: "Torchlight II"
permalink: /games/torchlight-ii/
excerpt: "An action role-playing dungeon crawler video game developed by Runic Games."
toc: false
header:
  teaser: assets/images/torchlight-ii-screen1-th.png
gallery:
  - url: /assets/images/torchlight-ii-screen1.png
    image_path: assets/images/torchlight-ii-screen1-th.png
    image_alt: "Loading Screen"
  - url: /assets/images/torchlight-ii-screen2.png
    image_path: assets/images/torchlight-ii-screen2-th.png
    image_alt: "Main Menu"
  - url: /assets/images/torchlight-ii-screen3.png
    image_path: assets/images/torchlight-ii-screen3-th.png
    image_alt: "In-game screenshot"
---

*An action role-playing dungeon crawler video game.*

| Store Page                                               | Version  | System | Installation Method |
|----------------------------------------------------------|----------|--------|---------------------|
| [Torchlight II ](https://www.gog.com/game/torchlight_ii) | 1.25.9.7 | Linux  | Native Linux        |

## Screenshots

{% include gallery caption="Screenshots from the game." %}

Torchlight II comes with a linux installer which can be installed with the Linux (Beta) feature of your Chromebook.  This is the easiest method to install the game.

## Prerequisites

- [Linux (Beta)](/docs/linux-beta/#set-up-linux-beta-on-your-chromebook)
- [OpenGL Support](/docs/linux-tools/#opengl-support)
- Chrome Flags
  - [Pointer lock](/docs/chrome-flags/#pointer-lock)
  - [GPU Support](/docs/chrome-flags/#gpu-support) (optional)

## Installation Instructions

Once you have installed the prerequisites above, you will need to download the game installer from the GOG.com website.  Select Torchlight II from your library, make sure you have **Linux** selected as the system and download the offline backup game installer.

![Torchlight II Download Linux Installer](/assets/images/torchlight-ii-download.png)

After the game installer is downloaded, move it into the Linux Files folder so that you can access the file from the terminal.  Copy the commands below and paste it into your terminal to start the Torchlight II installer.  Follow the on screen instructions and wait for the installation to finish.

    chmod +x gog_torchlight_2_*.sh
    ./gog_torchlight_2_*.sh



## Post-install Clean up

You can delete the Torchlight II installer from your Chromebook.  The file isn't need to play the game.

## Running the Game

Once the installation is complete. You can start the game by clicking on the Torchlight II icon from the Chrome OS Application Launcher. The icon will be located in a group labelled Linux apps

## Known Issues

### LAN Play

Linux (Beta) does not have direct access to the network interface.  It is not possible to host a LAN game from your Chromebook as your game will not be visible by other computer, even if you are in the same network.
