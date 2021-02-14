---
title: "Quake II: Quad Damage"
permalink: /games/quake-ii/
excerpt: "A first-person shooter video game developed by id Software."
header:
  teaser: assets/images/quake2-screen1-th.png
toc: false
gallery:
  - url: /assets/images/quake2-screen1.png
    image_path: assets/images/quake2-screen1-th.png
    image_alt: "Screenshot 1"
  - url: /assets/images/quake2-screen2.png
    image_path: assets/images/quake2-screen2-th.png
    image_alt: "Screenshot 2"
  - url: /assets/images/quake2-screen3.png
    image_path: assets/images/quake2-screen3-th.png
    image_alt: "Screenshot 3"
---

*A first-person shooter video game developed by id Software*

| Store Page                                           | Version      | System  | Installation Method      |
|------------------------------------------------------|--------------|---------|--------------------------|
|[Quake II](https://gog.com/game/quake_ii_quad_damage) | 3.20 (gog-3) | Windows | Source Port (Yamagi)     |

## Screenshots

{% include gallery caption="Screenshots from Quake II on an ASUS Flip C434 running Chrome OS 88 with Crostini." %}

The instructions on this page will get you running Quake II on a source port of the original game called Yamagi.  You can find out more about this source port by visiting the [yagami webpage](http://www.yamagi.org/quake2/).  This port incorporates a number of bug fixes from the original game and supports high resolution screens without altering the look and feel of the game.

## Prerequisites

- Setup [Linux (Beta)](/docs/linux-beta/#set-up-linux-beta-on-your-chromebook)
- Enable the [Pointer lock](/docs/pointer-lock) Chrome Flags
- Enable and activate [GPU Support](/docs/gpu-support)
- Download and install [InnoExtract](/docs/innoextract)
- Install the required packages

      sudo apt-get update && sudo apt-get install mesa-utils software-properties-common -y

- Enable the contrib repository and install the quake2 yamagi port

      sudo apt-add-repository contrib
      sudo apt-get update && sudo apt-get install quake2 -y


## Installation Instructions

Once you have installed the prerequisites above, you will need to download the game installer from the GOG.com website. Select Quake II from your library and download the offline backup game installer.

![Quake II Download page](/assets/images/quake2-download.png)

Copy the lines below into the Terminal App to download the latest version of the Quake Installer script.

    wget https://raw.githubusercontent.com/gooseberry/cgi/master/scripts/quake_2_installer.sh
    chmod +x quake_2_installer.sh

After the game installer is downloaded, move it into the **Linux Files** folder so that you can access the file from the terminal. It should be in the same folder as the *quake_2_installer.sh* file.

![Quake II installer files](/assets/images/quake2-files.png)

To install the game, run this command from the Terminal App.  The installation script will take a few minutes to complete.

    ./quake_2_installer.sh setup_quake2_quad_damage_2.0.0.3.exe

## Running the Game

The installation script creates application icons in the Chrome Launcher.  You can find a shortcut for Quake II, and both the map packs under the *Linux apps* folder in the Launcher.

## Post Insall Clean-up

The script will delete all temporary folders it creates during the installation process.  You can delete both the script and the Quake 2 GOG installer from your Linux files as these are not need to run the game.

## Known Issues

Check the [Troubleshooting](/docs/troubleshooting) section of this guide for some common problems along with some tips on resolving these issues.

