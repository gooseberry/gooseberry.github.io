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

## Game Details

| Store Page | Setup File | Installer Type | Game Engine |
|:--|:--|:--|:--|
| [Descent 2 <i class="fas fa-external-link-alt"></i>](https://gog.com/game/descent_2) | setup\_descent\_2\_1.1\_\(16596\).exe | Inno Setup |[d2x-rebirth <i class="fas fa-external-link-alt"></i>](https://www.dxx-rebirth.com) (Open-Source port) |

The instructions on this page will get you running Descent 2 on a source port of the original game called d2x-rebirth (Part of the [DXX-Rebirth <i class="fas fa-external-link-alt"></i>](https://www.dxx-rebirth.com/) project.  While it is possible to get the game to run with DosBox as packaged from GOG.com, this port incorporates a number of bug fixes from the original game and supports high resolution screens without altering the look and feel of the game.


## Installation Instructions

You will need to download the game installer from the GOG.com website.  Select Descent 2 from your library, make sure you have **Windows** selected as the system and download the offline backup game installer.

![Descent 2 Download page](/assets/images/descent-2-download.png)

If you click on the *Download and Install now* link, it will download the galaxy client installer.  You won't be able to install the game on your Chromebook with this installer.
{: .notice--warning}

After the game installer is downloaded, move it into the **Linux Files** folder so that you can access the file from the terminal.  It should be in the same folder as the *descent2_installer.sh* file

![Descent 2 installer files](/assets/images/descent-2-files.png)

To install the game, run this command from the Terminal App.  The installation script will take a few minutes to complete.

    cd git/smoke
    ansible-playbook -i hosts descent2.yml    

## Running the Game

Once the installation is complete.  You can start the game by clicking on the Descent 2 icon from the Chrome OS Application Launcher.  The icon will be located in a group labelled *Linux apps*

## Known Issues

### Missing videos

Certain Descent movies are not playing.  This is related to a known problem introduced with PhysFS 3 and the d2x-rebirth version 0.58.  Details are available on the related [GitHub Issue <i class="fas fa-external-link-alt"></i>](https://github.com/dxx-rebirth/dxx-rebirth/issues/379)
