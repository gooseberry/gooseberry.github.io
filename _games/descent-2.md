---
title: "Descent 2"
permalink: /games/descent-2/
excerpt: "A first person shooter video game developed by Parallax Software."
toc: false
header:
  teaser: assets/images/descent-2-screen1-th.png
gallery:
  - url: /assets/images/descent-2-screen1.png
    image_path: assets/images/descent-2-screen1-th.png
    image_alt: "Loading Screen"
  - url: /assets/images/descent-2-screen2.png
    image_path: assets/images/descent-2-screen2-th.png
    image_alt: "Main Menu"
  - url: /assets/images/descent-2-screen3.png
    image_path: assets/images/descent-2-screen3-th.png
    image_alt: "In-game screenshot"
---

*A first person shooter developed by Parallax Software.*

| Store Page                                | Version | System  | Installation Method       |
|-------------------------------------------|---------|---------|---------------------------|
|[Descent 2](https://gog.com/game/descent_2)| 1.1     | Windows | Source Port (d2x-rebirth) |

## Screenshots

{% include gallery caption="Screenshots from the game on an ASUS Flip C434 running Chrome OS 81 with Crostini." %}

The instructions on this page will get you running Descent 2 on a source port of the original game called d2x-rebirth (Part of the [DXX-Rebirth <i class="fas fa-external-link-alt"></i>](https://www.dxx-rebirth.com/) project.  While it is possible to get the game to run with DosBox as packaged from GOG.com, this port incorporates a number of bug fixes from the original game and supports high resolution screens without altering the look and feel of the game.

## Prerequisites

- Setup [Linux (Beta)](/docs/linux-beta/#set-up-linux-beta-on-your-chromebook)
- Enable the [Pointer lock](/docs/pointer-lock) Chrome Flags
- Enable and activate [GPU Support](/docs/gpu-support)
- Download and install [InnoExtract](/docs/innoextract)
- Install the required packages

      sudo apt-get update && sudo apt-get install bchunk mesa-utils software-properties-common vorbis-tools -y

- Enable the non-free respository and install the d2x-rebirth package
        
      sudo apt-add-repository non-free
      sudo apt-get update && sudo apt-get install d2x-rebirth -y
        

## Installation Instructions

Once you have installed the prerequisites above, you will need to download the game installer from the GOG.com website.  Select Descent 2 from your library, make sure you have **Windows** selected as the system and download the offline backup game installer.

![Descent 2 Download page](/assets/images/descent-2-download.png)

If you click on the *Download and Install now* link, it will download the galaxy client installer.  You won't be able to install the game on your Chromebook with this installer.
{: .notice--warning}

Copy the lines below into the Terminal App to download the latest version of the Descent 2 Installer script.

    wget https://raw.githubusercontent.com/gooseberry/cgi/master/scripts/descent2_installer.sh
    chmod +x descent2_installer.sh

After the game installer is downloaded, move it into the **Linux Files** folder so that you can access the file from the terminal.  It should be in the same folder as the *descent2_installer.sh* file

![Descent 2 installer files](/assets/images/descent-2-files.png)

To install the game, run this command from the Terminal App.  The installation script will take a few minutes to complete.

    ./descent2_installer.sh setup_descent_2_1.1_\(16596\).exe

## Running the Game

Once the installation is complete.  You can start the game by clicking on the Descent 2 icon from the Chrome OS Application Launcher.  The icon will be located in a group labelled *Linux apps*

## Post Install Clean-up

The script will delete all temporary folders it creates during the installation process. You can delete both the script and the Descent GOG installer from your Linux files as these are not need to run the game.

## Known Issues

Check the [Troubleshooting](/docs/troubleshooting) section of this guide for some common problems along with some tips on resolving these issues.

### CD Music

You can switch to CD music from the game's main menu under **Options..** and **Sound effects & music...**  Set *jukebox* as the music type.  Finally, select **Path for level music (Browse...)** to open a file selection box.  Select the *music* folder, then select the **\<This directory\>** option.

