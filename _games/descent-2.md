---
title: "Descent 2"
permalink: /games/descent-2/
toc: false
---

[Store Page <i class="fas fa-external-link-alt"></i>](https://www.gog.com/game/descent_2)

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

Follow the instructions below to install the descent 2 source port and manually copy the files to the .d2x-rebirth directory.  There is an alternative installation method further below that uses scripts to automate the file transfers.  Feel free to use that method as well.

1. Download the Descent 2 Windows offline backup game installer.
2. Move the installer to your *Linux files* folder
3. Open the *Terminal* app
4. `sudo apt-get install d2x-rebirth`
5. `mkdir tmp_gog && innoextract -d tmp_gog setup_descent_2_1.1_\(16596\).exe`
6. Copy the following files from tmp_gog/app to the .d2x-rebirth folder in your home directory
  * DESCENT2.HAM
  * DESCENT2.HOG
  * DESCENT2.S11
  * DESCENT2.S22
  * DESCENT_II.gog
  * DESCENT_II.inst
  * ALIEN1.PIG
  * ALIEN2.PIG
  * FIRE.PIG
  * GROUPA.PIG
  * ICE.PIG
  * WATER.PIG
  * INTRO-H.MVL
  * OTHER-H.MVL
  * ROBOTS-H.MVL
7. Rename all the files in the .d2x-rebirth directory to lowercase.

**Note**: The file name of the installer may not be identical, the commands must be modified if the filename does not match.
{: .notice--info}

### Add CD music

The game will run perfectly fine with MIDI music.  Follow these steps if you prefer to listen to the CD music that comes with the game.

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
