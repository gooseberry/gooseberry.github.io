---
title: "X-COM UFO Defense"
permalink: /games/xcom-ufo-defense/
excerpt: "A science fiction strategy video game developed by Mythos Games and published by MicroProse"
toc: false
header:
  teaser: assets/images/xcom-ufo-defense-screen1-th.png
gallery:
  - url: /assets/images/xcom-ufo-defense-screen1.png
    image_path: assets/images/xcom-ufo-defense-screen1-th.png
    image_alt: "Screenshot 1"
  - url: /assets/images/xcom-ufo-defense-screen2.png
    image_path: assets/images/xcom-ufo-defense-screen2-th.png
    image_alt: "Screenshot 2"
  - url: /assets/images/xcom-ufo-defense-screen3.png
    image_path: assets/images/xcom-ufo-defense-screen3-th.png
    image_alt: "Screenshot 3"
---

*A science fiction strategy game developped by Mythos Games*

| Store Page                                              | Version | System          | Installation Method                        |
|---------------------------------------------------------|---------|-----------------|--------------------------------------------|
|[X-COM UFO Defense](https://www.gog.com/game/xcom_ufo_defense)| 1.2      | Windows         | Source Port (OpenXcom)                     |

## Screenshots

{% include gallery caption="Screenshots from the game on an ASUS Flip C434 running Chrome OS 85 with Crostini." %}

The instructions on this page will get you running X-COM UFO Defense on a source port of the original game called OpenXcom. You can find out more about this source port by visiting the [OpenXcom webpage](https://openxcom.org/).. While it is possible to get the game to run with DosBox as packaged from GOG.com, this port incorporates a number of bug fixes from the original game and supports high resolution screens without altering the look and feel of the game.

## Installation Instructions

You will need to download the game installer from the GOG.com website. Select X-COM UFO Defense from your library, make sure you have **Windows** selected as the system and download the offline backup game installer.

![X-COM UFO Defense Download Page](/assets/images/xcom-ufo-defense-download.png)

If you click on the *Download and Install now* link, it will download the galaxy client installer. You won’t be able to install the game on your Chromebook with this installer.
{: .notice--warning}

After the game installer is downloaded, move it into the Linux Files folder so that you can access the file from the terminal.

![X-COM UFO Defense Files](/assets/images/xcom-ufo-defense-files.png)

To install the game, run this command from the Terminal App. The installation script will take a few minutes to complete.

    cd git/smoke
    ansible-playbook -i hosts xcom_ufo_defense.yml

## Running the Game

Once the installation is complete. You can start the game by clicking on the X-COM UFO Defense icon from the Chrome OS Application Launcher. The icon will be located in a group labelled Linux apps
