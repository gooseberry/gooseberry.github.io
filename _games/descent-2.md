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

| Store Page                                | Version | System  | Installation Method |
|-------------------------------------------|---------|---------|---------------------|
|[Descent 2](https://gog.com/game/descent_2)| 1.1     | Windows | Source Port         |

## Screenshots

{% include gallery caption="Screenshots from the game." %}

Descent 2 runs on port of the original game called d2x-rebirth (Part of the [DXX-Rebirth <i class="fas fa-external-link-alt"></i>](https://www.dxx-rebirth.com/) project.)

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

If you completed all the steps above correctly, you should see a *Descent 2* icon in your Chromebook application launcher inside the *Linux app* group.  You can start Descent 2 by clicking on this icon.  You can delete the Descent 2 windows installer and the tmp_descent2 folder from your Linux files as these are no longer needed.

### Add CD music

The game will run perfectly fine with the included MIDI soundtrack.  If you prefer to listen to the original CD music soundtrack that comes with the game however, follow the steps below.

1. Make a directory called music in the .d2x-rebirth folder and move the files *descent_ii.gog* and *descent_ii.inst* to this directory.
2. Use bchunk to convert the files into .WAV

    `bchunk -w descent_ii.gog descent_ii.inst descent_ii`

3. Convert the .wav files to .ogg

    `oggenc -q 8 *.wav`

4. Start Descent 2 from tha application launcher.  Under the config option, change music to *jukebox* select the music folder for level music.

After completing these steps, a Descent 2 icon will appear in the app launcher.

## Known Issues

### CD Music

The GOG installer comes with CD music in a bin/cue format (DESCENT_ii.inst and DESCENT_ii.gog)  Extra steps have been added to the instructions to convert the CD music and make it available in the game.

## Alternative Installation

This method downloads additional scripts from the web that will run the innoextract tool and place the files in the appropriate folder for you.

1. Download the Descent 2 Windows offline backup game installer.
2. Move the installer to your *Linux files* folder
3. Open the *Terminal* app
4. `sudo apt-get install d2x-rebirth`
5. Download the descent2 script from github
