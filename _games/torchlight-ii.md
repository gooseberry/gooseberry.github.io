---
title: "Torchlight II"
permalink: /games/torchlight-ii/
excerpt: "An action role-playing dungeon crawler video game developed by Runic Games."
toc: false
header:
  teaser: assets/images/torchlight-ii-screen1-th.png
gallery:
  - url: /assets/images/torchlight-ii-screen1.png
    image_path: assets/images/torchlight-ii-screen1-th.png
    image_alt: "Loading Screen"
  - url: /assets/images/torchlight-ii-screen2.png
    image_path: assets/images/torchlight-ii-screen2-th.png
    image_alt: "Main Menu"
  - url: /assets/images/torchlight-ii-screen3.png
    image_path: assets/images/torchlight-ii-screen3-th.png
    image_alt: "In-game screenshot"
---

*An action role-playing dungeon crawler video game.*

{% include gallery caption="Torchlight II screenshots from an ASUS Flip C434 running Chrome OS 81 with Crostini." %}

| Store Page | Setup File | Installer Type | Game Engine |
|:--|:--|:--|:--|
| [Torchlight II <i class="fas fa-external-link-alt"></i>](https://www.gog.com/game/torchlight_ii) | gog_torchlight_2_2.0.0.2.sh | Native  | Native Linux |

# Installation Instructions

## Download the game

1. Go to your [GOG Library](https://www.gog.com/en/account) and select *Torchlight 2*.
2. Next to the **System** option, select **Linux**.
3. Click on the link under *DOWNLOAD GAME INSTALLERS*.

![Torchlight II Download Linux Installer](/assets/images/torchlight-ii-download.png)

## Move the installer to Linux Files

After the game installer is downloaded, move it into the **Linux Files** folder so that you can access the file from the terminal.

## Run the Ansible playbook

1. Start the Terminal App.
2. Change directory to where you downloaded *Smoke* `cd git/smoke`
3. Run the following command to install the game.

~~~bash
ansible-playbook -i hosts torchlight2.yml
~~~

The installation script will take a few minutes to complete.

## Running the Game

Once the installation is complete. You can start the game by clicking on the Torchlight II icon from the Chrome OS Application Launcher. The icon will be located in a group labelled Linux apps
