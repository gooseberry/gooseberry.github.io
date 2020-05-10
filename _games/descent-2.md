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

- [Linux (Beta)](/docs/linux-beta/#set-up-linux-beta-on-your-chromebook)
- [OpenGL Support](/docs/linux-tools/#opengl-support)
- [Non-Free Repository](/docs/linux-tools/#non-free-repository)
- [innoextract](/docs/linux-tools/#innoextract)
- [bhchunk](/docs/linux-tools/#bchunk) *optional - required to convert CD music*
- [vorbis-tool](/docs/linux-tools/#vorbis-tools) *optional - required to convert CD music*
- Chrome Flags
  - [Pointer lock](/docs/chrome-flags/#pointer-lock)
  - [GPU Support](/docs/chrome-flags/#gpu-support) (optional)

## Installation Instructions

Once you have installed the prerequisites above, you will need to download the game installer from the GOG.com website.  Select Descent 2 from your library, make sure you have **Windows** selected as the system and download the offline backup game installer.

![Descent 2 Download page](/assets/images/descent-2-download.png)

If you click on the *Download and Install now* link, it will download the galaxy client installer.  You won't be able to install the game on your Chromebook with this installer.
{: .notice--warning}

After the game installer is downloaded, move it into the **Linux Files** folder so that you can access the file from the terminal.  You will need to run a few commands on the terminal to complete the following steps, go ahead and start the terminal.  You can copy and paste the line below into the terminal to install the Descent 2 source port application.

    sudo apt-get update && sudo apt-get install d2x-rebirth -y

**Note**: If you get an error trying to install the source port, go back and make sure you enabled the Non-Free repository.
{: .notice--info}

Next, you'll want to extract all the game files from the installer.  We create a temporary directory to hold the game files because this makes cleaning up the files we don't need afterwards a lot easier.  Copy the two commands below into the terminal.  The first command creates the temporary directory and the second line extracts the Descent 2 files into the new directory.  Wait for the extraction process to finish.

    mkdir tmp_descent2
    innoextract -d tmp_descent2 setup_descent_2_*.exe

With the d2x-rebirth source port installed and the game files extracted, you need to copy the game files into the d2x-rebirth configuration directory before you can start playing Descent 2.  You'll need to *Show hidden files* in the options at the top right corner of *Files* app on your Chromebook to see the .d2x-rebirth folder in your linux files

![Show Hidden Files](/assets/images/show-hidden-files.png)

In the **Linux files**, copy the following files from tmp_descent2/app to the .d2x-rebirth folder.  You also need to change all the files to lowercase since the source port will not recognize the files if they are in upppercase. 
  * DESCENT2.HAM
  * DESCENT2.HOG
  * DESCENT2.S11
  * DESCENT2.S22
  * DESCENT_II.GOG
  * DESCENT_II.INST
  * ALIEN1.PIG
  * ALIEN2.PIG
  * FIRE.PIG
  * GROUPA.PIG
  * ICE.PIG
  * WATER.PIG
  * INTRO-H.MVL
  * OTHER-H.MVL
  * ROBOTS-H.MVL

If you completed all the steps above correctly, your .d2x-rebirth folder should look like the screenshot below.

![Contents of .d2x-rebirth directory](/assets/images/contents-d2x-rebirth.png) 

### Descent 2 Original Soundtrack *(Optional)*

The game will run perfectly fine with the included MIDI soundtrack.  If you prefer to listen to the original CD music soundtrack that comes with the game however, there are a few extra steps to get this working.

The first thing you will want to do is to create a directory called music in the .d2x-rebirth folder and move the files *descent_ii.gog* and *descent_ii.inst* to this directory.  These files are a disk image of the original Descent 2 CD.  The Descent 2 source port can't read these files, but you can convert them to a format that the game can play.  Open the terminal application and copy the following lines to convert the CD image tracks to music files.

    cd ~/.d2x-rebirth/music
    bhunck -w DESCENT_II.GOG DESCENT_II.INST d2_ost_track_
    rm d2_ost_track_01.iso
    oggenc -q 8 *.wav
    rm d2_ost_track*.wav

You can switch to CD music from the game's main menu under **Options..** and **Sound effects & music...**  Set *jukebox* as the music type.  Finally, select **Path for level music (Browse...)** to open a file selection box.  Select the *music* folder, then select the **<This directory>** option.

Additionally, you can set specific tracks from the soundtrack for the *Main Menu*, *Briefing*, *Credits*, *Escape Sequence*, and *Game Ending*.

## Post-Install Clean up

Inside the tmp_descent2/app folder, you will find the game's manual *Manual.pdf* and a keyboard reference card *RefCard.pdf* with all the in-game keyboard shortcuts.  Copy those files if you want to keep them.  You can delete the Descent 2 windows installer and the tmp_descent2 folder from your Linux files as these are no longer needed.

## Alternative Installation

This method downloads additional scripts from the web that will run the innoextract tool and place the files in the appropriate folder for you. The script hasn't been completed yet.  This page will be updated with instructions once the script is ready.
{: .notice--info}

## Running the Game

Once the installation is complete.  You can start the game by clicking on the Descent 2 icon from the Chrome OS Application Launcher.  The icon will be located in a group labelled *Linux apps*
