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

## Screenshots

{% include gallery caption="Screenshots from the game." %}

[Store Page <i class="fas fa-external-link-alt"></i>](https://www.gog.com/game/torchlight_ii)

Torchlight II comes with a linux installer which can be installed with the Linux (Beta) feature of your Chromebook.

## Prerequisites

- [Linux (Beta)](/docs/linux-beta/#set-up-linux-beta-on-your-chromebook)
- [OpenGL Support](/docs/linux-tools/#opengl-support)
- Chrome Flags
  - [Pointer lock](/docs/chrome-flags/#pointer-lock)
  - [GPU Support](/docs/chrome-flags/#gpu-support) (optional)

## Installation Instructions

1. Download the Torchlight II Linux installer.
2. Move the installer to your *Linux files* folder
3. Open the *Terminal* app
4. Run the command `chmod +x gog_torchlight_2_2.0.0.2.sh`
5. Run the command `./gog_torchlight_2_2.0.0.2.sh`
6. Follow the on screen instructions

**Note**: The file name of the installer may not be identical, the commands must be modified if the filename does not match.
{: .notice--info}

After completing these steps, a Torchlight icon will appear in the app launcher.

## Known Issues

### LAN Play

Linux (Beta) does not have direct access to the network interface.  It is not possible to host a LAN game from your Chromebook as your game will not be visible by other computer, even if you are in the same network.
