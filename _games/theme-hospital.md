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

## Prerequisites

- Setup [Linux (Beta)](/docs/linux-beta/#set-up-linux-beta-on-your-chromebook)
- Enable [Pointer lock](/docs/pointer-lock)
- Download and install [InnoExtract](/docs/innoextract)
- Install the required packages

      sudo apt-get update && sudo apt-get install software-properties-common -y

- Enable the contrib respository and install the corsix-th package
        
      sudo apt-add-repository contrib
      sudo apt-get update && sudo apt-get install corsix-th -y

## Installation Instructions

Once you have installed the prerequisites above, you will need to download the game installer from the GOG.com website. Select Theme Hospital from your library, make sure you have **Windows** selected as the system and download the offline backup game installer.

![Theme Hospital Download Page](/assets/images/theme-hospital-download.png)

If you click on the *Download and Install now* link, it will download the galaxy client installer. You won’t be able to install the game on your Chromebook with this installer.
{: .notice--warning}

Copy the lines below into the Terminal App to download the latest version of the Theme Hospital Installer script.

    wget https://raw.githubusercontent.com/gooseberry/cgi/master/scripts/theme_hospital_installer.sh
    chmod +x theme_hospital_installer.sh

After the game installer is downloaded, move it into the Linux Files folder so that you can access the file from the terminal. It should be in the same folder as the theme_hospital_installer.sh file

![Theme Hospital Files](/assets/images/theme-hospital-files.png)

## Post-Install Clean Up

After the installer is finished, you can delete the installer script and the setup file from your computer as they are not required to play the game.

## Running the Game

Once the installation is complete. You can start the game by clicking on the CorsixTH icon from the Chrome OS Application Launcher. The icon will be located in a group labelled Linux apps

## Known Issues

Check the [Troubleshooting](docs/troubleshooting) section of this guide for some common problems along with some tips on resolving these issues.

