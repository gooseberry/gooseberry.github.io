---
title: "Quake"
permalink: /games/quake/
excerpt: "A first-person shooter video game developed by id Software."
header:
  teaser: assets/images/quake-screen1-th.png
toc: false
gallery:
  - url: /assets/images/quake-screen1.png
    image_path: assets/images/quake-screen1-th.png
    image_alt: "Screenshot 1"
  - url: /assets/images/quake-screen2.png
    image_path: assets/images/quake-screen2-th.png
    image_alt: "Screenshot 2"
  - url: /assets/images/quake-screen3.png
    image_path: assets/images/quake-screen3-th.png
    image_alt: "Screenshot 3"
---

*A first-person shooter video game developed by id Software*

| Store Page                                      | Version     | System  | Installation Method      |
|-------------------------------------------------|-------------|---------|--------------------------|
|[Quake](https://gog.com/game/quake_the_offering) | 1.09 (gog6) | Windows | Source Port (Quakespasm) |

## Screenshots

{% include gallery caption="Screenshots from Quake on an ASUS Flip C434 running Chrome OS 81 with Crostini." %}

The instructions on this page will get you running Quake on a source port of the original game called Quakespasm.  You can find out more about this source port by visiting the [quakespasm webpage](http://quakespasm.sourceforge.net/index.html).  While it is possible to get the game to run with DosBox as packaged from GOG.com, this port incorporates a number of bug fixes from the original game and supports high resolution screens without altering the look and feel of the game.

## Prerequisites

- Setup [Linux (Beta)](/docs/linux-beta/#set-up-linux-beta-on-your-chromebook)
- Enable the [Pointer lock](/docs/pointer-lock) Chrome Flags
- Enable and activate [GPU Support](/docs/gpu-support)
- Download and install [InnoExtract](/docs/innoextract)
- Install the required packages

      sudo apt-get update && sudo apt-get install bchunk mesa-utils quakespasm vorbis-tools -y

       


## Installation Instructions

Once you have installed the prerequisites above, you will need to download the game installer from the GOG.com website. Select Quake from your library and download the offline backup game installer.

![Quake Download page](/assets/images/quake-download.png)

Copy the lines below into the Terminal App to download the latest version of the Quake Installer script.

    wget https://raw.githubusercontent.com/gooseberry/cgi/master/scripts/quake_install.sh
    chmod +x quake_install.sh

After the game installer is downloaded, move it into the **Linux Files** folder so that you can access the file from the terminal. It should be in the same folder as the *quake_install.sh* file.

![Quake installer files](/assets/images/quake-files.png)

To install the game, run this command from the Terminal App.  The installation script will take a few minutes to complete.

    ./quake_install.sh setup_quake_the_offering_2.0.0.6.exe

## Running the Game

The installation script creates application icons in the Chrome Launcher.  You can find a shortcut for Quake, and both the map packs under the *Linux apps* folder in the Launcher.

## Post Insall Clean-up

The script will delete all temporary folders it creates during the installation process.  You can delete both the script and the Quake GOG installer from your Linux files as these are not need to run the game.

## Known Issues

### Mouse Lock

The mouse will not properly lock to the game screen.  When this happens, the mouse cursor won't move past the edge of the Chromebook screen and it will limit your range of movement within the game.  There is a workaround to solve this problem that you will need to repeat each time to play the game.

Firstly, you can't apply this workaround while quake is in fullscreen mode, but you can go back to fullscreen after you get the mouse lock.  From the game menu, turn off the fullscreen in the video options and apply changes.  While the menu is still up, hover the mouse anywhere over the quake screen and click the mouse button once.  The mouse pointer will then be locked to the Quake game and you will be able to use the mouse without hitting the edge of the screen.

### No Sound

If you do not hear any sound while playing the game, you can usually fix this problem by closing all your linux applications and shutting down the Linux (Beta) system.  Simply, right-click on the terminal app and select *Shut down Linux (Beta)* from the context menu.  Once the shut down process is finished, you should be able to run the game with sound.

### Black Screen

The game may on occasion show only a black screen.  You might run into this problem the first time you run the game after the initial installation.  You can usually fix this problem by closing all your linux applications and shutting down the Linux (Beta) system.  See the instructions in the *No Sound* section of this guide for more details.
