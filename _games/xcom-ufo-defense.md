---
title: "X-COM:UFO Defense"
permalink: /games/xcom-ufo-defense/
excerpt: "A turn-based strategy video game developed by MicroProse."
toc: false
header:
  teaser: assets/images/xcom-ufo-defense-screen1-th.png
gallery:
  - url: /assets/images/xcom-ufo-defense-screen1.png
    image_path: assets/images/xcom-ufo-defense-screen1-th.png
    image_alt: "Loading Screen"
  - url: /assets/images/xcom-ufo-defense-screen2.png
    image_path: assets/images/xcom-ufo-defense-screen2-th.png
    image_alt: "Main Menu"
  - url: /assets/images/xcom-ufo-defense-screen3.png
    image_path: assets/images/xcom-ufo-defense-screen3-th.png
    image_alt: "In-game screenshot"
---

*A turn-based strategy video game developed by MicroProse.*

| Store Page                                               | Version | System  | Installation Method    |
|----------------------------------------------------------|---------|---------|------------------------|
|[X-COM:UFO Defense](https://gog.com/game/xcom-ufo-defense)| 1.2     | Windows | Source Port (openxcom) |

## Screenshots

{% include gallery caption="Screenshots from the game on an ASUS Flip C434 running Chrome OS 88 with Crostini." %}

The instructions on this page will get you running X-COM:UFO Defense on a source port of the original game called [openxcom <i class="fas fa-external-link-alt"></i>](https://openxcom.org/).  While it is possible to get the game to run with DosBox as packaged from GOG.com, this port incorporates a number of bug fixes from the original game and supports high resolution screens without altering the look and feel of the game.

## Prerequisites

- Setup [Linux (Beta)](/docs/linux-beta/#set-up-linux-beta-on-your-chromebook)
- Enable the [Pointer lock](/docs/pointer-lock) Chrome Flags
- Download and install [InnoExtract](/docs/innoextract)

## Installation Instructions

Once you have installed the prerequisites above, you will need to download the game installer from the GOG.com website.  Select X-COM:UFO Defense from your library, make sure you have **Windows** selected as the system and download the offline backup game installer.

![X-COM:UFO Defense Download page](/assets/images/xcom-download.png)

If you click on the *Download and Install now* link, it will download the galaxy client installer.  You won't be able to install the game on your Chromebook with this installer.
{: .notice--warning}

Copy the lines below into the Terminal App to download the latest version of the X-COM:UFO Defense Installer script.

    wget https://github.com/gooseberry/cgi/raw/master/scripts/xcom-installer.sh
    chmod +x xcom_installer.sh

After the game installer is downloaded, move it into the **Linux Files** folder so that you can access the file from the terminal.  It should be in the same folder as the *xcom_installer.sh* file

![X-COM:UFO Defense installer files](/assets/images/xcom-files.png)

To install the game, run this command from the Terminal App.  The installation script will take a few minutes to complete.

    ./xcom_installer.sh setup_x-com_ufo_defense_1.2_\(28046\).exe

## Running the Game

Once the installation is complete.  You can start the game by clicking on the OpenXcom icon from the Chrome OS Application Launcher.  The icon will be located in a group labelled *Linux apps*

## Post Install Clean-up

The script will delete all temporary folders it creates during the installation process. You can delete both the script and the X-COM GOG installer from your Linux files as these are not need to run the game.

## Known Issues

Check the [Troubleshooting](/docs/troubleshooting) section of this guide for some common problems along with some tips on resolving these issues.
