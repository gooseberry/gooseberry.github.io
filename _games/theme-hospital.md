---
title: "Theme Hospital"
permalink: /games/theme-hospital/
excerpt: "A hospital business simulation game developped by Bullfrog Productions."
toc: false
header:
  teaser: assets/images/theme-hospital-screen1-th.png
gallery:
  - url: /assets/images/theme-hospital-screen1.png
    image_path: assets/images/theme-hospital-screen1-th.png
    image_alt: "Screenshot 1"
  - url: /assets/images/theme-hospital-screen2.png
    image_path: assets/images/theme-hospital-screen2-th.png
    image_alt: "Screenshot 2"
  - url: /assets/images/theme-hospital-screen3.png
    image_path: assets/images/theme-hospital-screen3-th.png
    image_alt: "Screenshot 3"
---

*A hospital business simulation game developped by Bullfrog Productions.*

| Store Page                                              | Version | System          | Installation Method                        |
|---------------------------------------------------------|---------|-----------------|--------------------------------------------|
|[Theme Hospital](https://www.gog.com/game/theme_hospital)| v3      | Windows         | Source Port (CorsixTH)                     |

## Screenshots

{% include gallery caption="Screenshots from the game on an ASUS Flip C434 running Chrome OS 85 with Crostini." %}

The instructions on this page will get you running Theme Hospital on a source port of the original game called CorsixTH. You can find out more about this source port by visiting the [CorsixTH webpage](https://corsixth.com/).. While it is possible to get the game to run with DosBox as packaged from GOG.com, this port incorporates a number of bug fixes from the original game and supports high resolution screens without altering the look and feel of the game.

## Installation Instructions

You will need to download the game installer from the GOG.com website. Select Theme Hospital from your library, make sure you have **Windows** selected as the system and download the offline backup game installer.

![Theme Hospital Download Page](/assets/images/theme-hospital-download.png)

If you click on the *Download and Install now* link, it will download the galaxy client installer. You won’t be able to install the game on your Chromebook with this installer.
{: .notice--warning}

After the game installer is downloaded, move it into the Linux Files folder so that you can access the file from the terminal. It should be in the same folder as the theme_hospital_installer.sh file

![Theme Hospital Files](/assets/images/theme-hospital-files.png)

To install the game, run this command from the Terminal App. The installation script will take a few minutes to complete.

    cd git/smoke
    ansible-playbook -i hosts theme_hospital.yml

## Running the Game

Once the installation is complete. You can start the game by clicking on the CorsixTH icon from the Chrome OS Application Launcher. The icon will be located in a group labelled Linux apps
