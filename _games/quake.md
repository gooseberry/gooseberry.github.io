---
title: "Quake"
permalink: /games/quake/
excerpt: "A first-person shooter video game developed by id Software."
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

- [Linux (Beta)](/docs/linux-beta/#set-up-linux-beta-on-your-chromebook)
- [OpenGL Support](/docs/linux-tools/#opengl-support)
- [innoextract](/docs/linux-tools/#innoextract)
- Chrome Flags
  - [Pointer lock](/docs/chrome-flags/#pointer-lock)
  - [GPU Support](/docs/chrome-flags/#gpu-support) (optional)

## Installation Instructions

Once you have installed the prerequisites above, you will need to download the game installer from the GOG.com website. Select Quake from your library and download the offline backup game installer.

![Quake Download page](/assets/images/quake-download.png)

After the game installer is downloaded, move it into the **Linux Files** folder so that you can access the file from the terminal. You will need to run a few commands on the terminal to complete the following steps, go ahead and start the terminal. You can copy and paste the line below into the terminal to install the Quake source port application.

    sudo apt-get update && sudo apt-get install quakespasm -y

Next, you’ll want to extract all the game files from the installer. We create a temporary directory to hold the game files because this makes cleaning up the files we don’t need afterwards a lot easier. Copy the two commands below into the terminal. The first command creates the temporary directory and the second line extracts the Quake files into the new directory. Wait for the extraction process to finish.

    mkdir tmp_quake
    innoextract -d tmp_quake setup_quake_the_offering_*.exe

With the quakespasm source port installed and the game files extracted, you need to copy the game files into the quakespasm configuration directory before you can start playing Quake. You’ll need to Show hidden files in the options at the top right corner of Files app on your Chromebook to see the .quakespasm folder in your linux files

![Show hidden files](/assets/images/show-hidden-files.png)

In the Linux files, copy the following files from tmp_quake/app/id1 to the .quakespasm/id1 folder. You also need to change all the files to lowercase since the source port will not recognize the files if they are in upppercase.

  * PAK0.PAK
  * PAK1.PAK


#### Mission Pack 1: Scourge of Armagon

Under the .quakespasm folder in your *Linux files*, create a folder and call it hipnotic.  Copy the pak0.pak from tmp_quake/app/hipnotic to the .quakespasm/hipnotic folder.  This file should be in lowercase.  If not, you will need to rename it.

#### Mission Pack 2: Dissolutions of Eternity

Under the .quakespasm folder in your *Linux files*, create a folder and call it rogue.  Copy the pak0.pak from tmp_quake/app/rogue to the .quakespasm/rogue folder.  This file should be in lowercase.  If not, you will need to rename it.

### Quake Original Soundtrack *(Optional)*

## Application Launcher Icon

Now that you have all the game files in the right places, you will need to create application launcher icons in your Chromebook to launch the game.

Right-click the images belown and click *Save image as...*  Save the image in your *Linux files* under *.config/share/icons/*  If the icons folder doesn't exist, you can right-click in the *share* folder to bring up the context menu and create a *New Folder*.

![Quake Icon](/assets/images/quake.png) ![Scourge of Armagedon Icon](/assets/images/quake-scourge-of-armagedon.png) ![Dissolution of Eternity Icon](/assets/images/quake-dissolution-of-eternity.png) 

Next, you need to create a *desktop* file with the details on how to launch the game.  To do this, open the **txt** app on your Chromebook and enter the following lines.

    [Desktop Entry]
    Encoding=UTF-8
    Value=1.0
    Type=Application
    Name=Quake
    GenericName=Quake
    Comment=QuakeSpasm
    Icon=/home/<your-username>/.local/share/icons/quake.png
    Exec=quakespasm
    Categories=Game;
    Path=/usr/games

**Important**: Replace *\<your-username\>* with your assigned username in Terminal.  You can find your username by running the command `whoami` in the terminal.
{: .notice--warning}  

After changing the Icon line, click *Save as...* to save the file in your *Linux files* under *.local/share/application/quake.desktop*  You might have to *Show hidden files* to see the .local folder.

## Post-Install Clean Up

## Running the Game

## Known Issues

### Mouse Lock

The mouse will not properly lock to the game screen.  When this happens, the mouse cursor won't move past the edge of the Chromebook screen and it will limit your range of movement within the game.  There is a workaround to solve this problem that you will need to repeat each time to play the game.

Firstly, you can't apply this workaround while quake is in fullscreen mode, but you can go back to fullscreen after you get the mouse lock.  From the game menu, turn off the fullscreen in the video options and apply changes.  While the menu is still up, hover the mouse anywhere over the quake screen and click the mouse button once.  The mouse pointer will then be locked to the Quake game and you will be able to use the mouse without hitting the edge of the screen.
