---
title: "Quake II: Quad Damage"
permalink: /games/quake-ii/
excerpt: "A first-person shooter video game developed by id Software."
header:
  teaser: assets/images/quake2-floppy.png
toc: false
gallery:
  - url: /assets/images/quake2-screen1.png
    image_path: assets/images/quake2-screen1-th.png
    image_alt: "Screenshot 1"
  - url: /assets/images/quake2-screen2.png
    image_path: assets/images/quake2-screen2-th.png
    image_alt: "Screenshot 2"
  - url: /assets/images/quake2-screen3.png
    image_path: assets/images/quake2-screen3-th.png
    image_alt: "Screenshot 3"
---

*A first-person shooter video game developed by id Software*

{% include gallery caption="Screenshots from Quake II on an ASUS Flip C434 running Chrome OS 88 with Crostini." %}

# Game Details

| Store Page | Setup File | Installer Type | Game Engine |
|:--|:--|:--|:--|
|[Quake II <i class="fas fa-external-link-alt"></i>](https://gog.com/game/quake_ii_quad_damage) | setup_quake2_quad_damage_2.0.0.3.exe | Inno Setup | [Yamagi <i class="fas fa-external-link-alt"></i>](https://www.yamagi.org/quake2/) (Open-Source port) |

# Installation Instructions

## Download the game

1. Go to your [GOG Library](https://www.gog.com/en/account) and select *Quake II*.
2. Click on the link under *DOWNLOAD OFFLINE BACKUP GAME INSTALLERS*.

![Quake II Download page](/assets/images/quake2-download.png)

If you click on the *Download and Install now* link, it will download the galaxy client installer.  You won't be able to install the game on your Chromebook with this file.
{: .notice--warning}

## Move the installer to Linux Files

After the game installer is downloaded, move it into the **Linux Files** folder so that you can access the file from the terminal.

![Quake II installer files](/assets/images/quake2-files.png)

## Run the Ansible playbook

1. Start the Terminal App.
2. Change directory to where you downloaded *Smoke* `cd git/smoke`
3. Run the following command to install the game.

~~~bash
    ansible-playbook -i hosts quake2
~~~

The installation script will take a few minutes to complete.

## Running the Game

The installation script creates application icons in the Chrome Launcher.  You can find a shortcut for Quake II, and both the map packs under the *Linux apps* folder in the Launcher.
