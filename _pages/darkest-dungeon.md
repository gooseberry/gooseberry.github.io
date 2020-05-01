---
title: "Darkest Dungeon"
permalink: /games/darkest-dungeon/
toc: true
toc_label: " On this page"
toc_icon: "file-alt"
---

[Store Page <i class="fas fa-external-link-alt"></i>](https://www.gog.com/game/darkest_dungeon)

Darkest Dungeon comes with a linux installer which can be installed with the Linux (Beta) feature of your Chromebook.

## Prerequisites

- [Linux (Beta)](/docs/linux-beta/#set-up-linux-beta-on-your-chromebook)
- [OpenGL Support](/docs/linux-tools/#opengl-support)
- Chrome Flags
  - [Pointer lock](/docs/chrome-flags/#pointer-lock)
  - [GPU Support](/docs/chrome-flags/#gpu-support) (optional)

## Installation Instructions

1. Download the Darkest Dungeon Linux installer.
2. Move the installer to your *Linux files* folder
3. Open the *Terminal* app
4. Run the command `chmod +x darkest_dungeon_24839_28859.sh`
5. Run the command `./darkest_dungeon_24839_28859.sh`
6. Follow the on screen instructions

**Note**: The file name of the installer may not be identical, the commands must be modified if the filename does not match.
{: .notice--info}

After completing these steps, a Torchlight icon will appear in the app launcher.

## Known Issues

### LAN Play

Linux (Beta) does not have direct access to the network interface.  It is not possible to host a LAN game from your Chromebook as your game will not be visible by other computer, even if you are in the same network.