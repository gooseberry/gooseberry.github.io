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

| Store Page                                      | Version     | System  | Installation Method             |
|-------------------------------------------------|-------------|---------|---------------------------------|
|[Quake <i class="fas fa-external-link-alt"></i>](https://gog.com/game/quake_the_offering) | 1.09 (gog6) | Windows | Source Port (Quakespasm-Spiked) |

## Screenshots

{% include gallery caption="Screenshots from Quake on an ASUS Flip C434 running Chrome OS 81 with Crostini." %}

This install method was last tested on 2022-02-08 on ChromeOS 97.
{: .notice--info}

The instructions on this page will get you running Quake on a source port of the original game called Quakespasm-Spiked.  You can find out more about this source port by visiting the [quakespasm-spiked webpage <i class="fas fa-external-link-alt"></i>](https://triptohell.info/moodles/qss/).  While it is possible to get the game to run with DosBox as packaged from GOG.com, this port incorporates a number of bug fixes from the original game and supports high resolution screens without altering the look and feel of the game.

## Installation Instructions

You will need to download the game installer from the GOG.com website. Select Quake from your library and download the offline backup game installer.

![Quake Download page](/assets/images/quake-download.png)

After the game installer is downloaded, move it into the **Linux Files** folder so that you can access the file from the terminal.

![Quake installer files](/assets/images/quake-files.png)

To install the game, run these two commands from the Terminal App.  The installer will take a few minutes to complete.

    cd git/smoke
    ansible-playbook -i hosts quake.yml

## Running the Game

The installation script creates application icons in the Chrome Launcher.  You can find a shortcut for Quake, and both the map packs under the *Linux apps* folder in the Launcher.

## Known Issues

This script will extract the Quake music from the included CD images so you can hear the music in the game.  However, I have not yet included specific modifications to support two known problems with the tracks.

1. The provided CUE sheets packaged with installer incorrectly lists track times.  see [GOG Forum Discussion <i class="fas fa-external-link-alt"></i>](https://www.gog.com/forum/quake_series/quake_the_offering_incorrect_cue_sheets).  This script does not address this problem at the moment

2. The soundtrack provided with the game is apparently pre-emphasized.  see [GOG Forum Discussion <i class="fas fa-external-link-alt"></i>](https://www.gog.com/forum/quake_series/quake_the_offering_tweak_guide_video_quakespasm_extracting_audio_deemphasising).  This script does not address this problem at the moment.
