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

{% include gallery caption="Screenshots from the game on an ASUS Flip C434 running Chrome OS 81 with Crostini." %}

# Game Details

| Store Page | Setup File | Installer Type | Game Engine |
|:--|:--|:--|:--|
| [Descent 2 <i class="fas fa-external-link-alt"></i>](https://gog.com/game/descent_2) | setup\_descent\_2\_1.1\_\(16596\).exe | Inno Setup |[d2x-rebirth <i class="fas fa-external-link-alt"></i>](https://www.dxx-rebirth.com) (Open-Source port) |

# Installation Instructions

## Download the game

1. Go to your [GOG Library](https://www.gog.com/en/account) and select *Descent 2*.
2. Next to the **System** option, select **Windows**.
3. Click on the link under *DOWNLOAD OFFLINE BACKUP GAME INSTALLERS*.

![Descent 2 Download page](/assets/images/descent-2-download.png)

If you click on the *Download and Install now* link, it will download the galaxy client installer.  You won't be able to install the game on your Chromebook with this file.
{: .notice--warning}

## Move the installer to Linux Files

After the game installer is downloaded, move it into the **Linux Files** folder so that you can access the file from the terminal.

![Descent 2 installer files](/assets/images/descent-2-files.png)

## Run the Ansible playbook

1. Start the Terminal App.
2. Change directory to where you downloaded *Smoke* `cd git\smoke`
3. Run the following command to install the game.

  ansible-playbook -i hosts descent2.yml

The installation script will take a few minutes to complete.

# Running the Game

Once the installation is complete.  You can start the game by clicking on the Descent 2 icon from the Chrome OS Application Launcher.  The icon will be located in a group labelled *Linux apps*

# Known Issues

## Missing videos

Certain Descent movies are not playing.  This is related to a known problem introduced with PhysFS 3 and the d2x-rebirth version 0.58.  Details are available on the related [GitHub Issue <i class="fas fa-external-link-alt"></i>](https://github.com/dxx-rebirth/dxx-rebirth/issues/379)
