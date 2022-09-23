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

{% include gallery caption="Screenshots from Quake on an ASUS Flip C434 running Chrome OS 81 with Crostini." %}

This install method was last tested on 2022-02-08 on ChromeOS 97.
{: .notice--info}

# Game Details

| Store Page | Setup File | Installer Type | Game Engine |
|:--|:--|:--|:--|
|[Quake <i class="fas fa-external-link-alt"></i>](https://gog.com/game/quake_the_offering) | setup_quake_the_offering_2.0.0.6.exe | Inno Setup | [Quakespasm-Spiked <i class="fas fa-external-link-alt"></i>](https://triptohell.info/moodles/qss/) |

# Installation Instructions

## Download the games

1. Go to your [GOG Library](https://www.gog.com/en/account) and select *Descent 2*.
2. Click on the link under *DOWNLOAD OFFLINE BACKUP GAME INSTALLERS*.

![Quake Download page](/assets/images/quake-download.png)

If you click on the *Download and Install now* link, it will download the galaxy client installer.  You won't be able to install the game on your Chromebook with this file.
{: .notice--warning}

After the game installer is downloaded, move it into the **Linux Files** folder so that you can access the file from the terminal.

![Quake installer files](/assets/images/quake-files.png)

## Run the Ansible playbook

1. Start the Terminal App.
2. Change directory to where you downloaded *Smoke* `cd git/smoke`
3. Run the following command to install the game.

~~~bash
ansible-playbook -i hosts quake.yml
~~~

The installation script will take a few minutes to complete.

# Running the Game

The installation script creates application icons in the Chrome Launcher.  You can find a shortcut for Quake, and both the map packs under the *Linux apps* folder in the Launcher.

# Known Issues

This script will extract the Quake music from the included CD images so you can hear the music in the game.  However, I have not yet included specific modifications to support two known problems with the tracks.

1. The provided CUE sheets packaged with installer incorrectly lists track times.  see [GOG Forum Discussion <i class="fas fa-external-link-alt"></i>](https://www.gog.com/forum/quake_series/quake_the_offering_incorrect_cue_sheets).  This script does not address this problem at the moment

2. The soundtrack provided with the game is apparently pre-emphasized.  see [GOG Forum Discussion <i class="fas fa-external-link-alt"></i>](https://www.gog.com/forum/quake_series/quake_the_offering_tweak_guide_video_quakespasm_extracting_audio_deemphasising).  This script does not address this problem at the moment.
