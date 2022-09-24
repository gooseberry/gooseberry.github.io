---
title: "Indiana Jones and the Fate of Atlantis"
permalink: /games/indiana-jones-and-the-fate-of-atlantis/
excerpt: "Indiana Jones and the Fate of Atlantis is a point-and-click adventure game developed and published by LucasArts."
toc: false
header:
  teaser: assets/images/atlantis-floppy.png
gallery:
  - url: /assets/images/atlantis-screen1.png
    image_path: assets/images/atlantis-screen1-th.png
    image_alt: "Screenshot 1"
  - url: /assets/images/atlantis-screen2.png
    image_path: assets/images/atlantis-screen2-th.png
    image_alt: "Screenshot 2"
  - url: /assets/images/atlantis-screen3.png
    image_path: assets/images/atlantis-screen3-th.png
    image_alt: "Screenshot 3"
---

{% include gallery caption="Screenshots from the game on an ASUS Flip C434 running Chrome OS 105 with Crostini." %}

This install method was last tested on 2022-09-15 ont Chrome 105.
{: .notice--info}

# Game Details

| Store Page | Setup File | Installer Type | Game Engine |
|:--|:--|:--|:--|
| [Indiana Jones and the fate of Atlantis <i class="fas fa-external-link-alt"></i>](https://gog.com/game/indiana_jones_and_the_fate_of_atlantis) | indiana_jones_and_the_fate_of_atlantis_en_gog_2_20145.sh | Mojo Setup | [ScummVM <i class="fas fa-external-link-alt"></i>](https://scummvm.org) (Open-Source) |

# Installation Instructions

## Download the game

1. Go to your [GOG Library](https://www.gog.com/en/account) and select *Indiana Jones and the Fate of Atlantis*.
2. Next to the **System** option, select **Linux**.
3. Click on the link under *DOWNLOAD GAME INSTALLERS*.

![Indiana Jones and the Fate of Atlantis  Download page](/assets/images/atlantis-download.png)

## Move the installer to Linux Files

After the game installer is downloaded, move it into the **Linux Files** folder so that you can access the file from the terminal.

![Indiana Jones and the Fate of Atlantis installer files](/assets/images/atlantis-files.png)

## Run the Ansible playbook

1. Start the Terminal App.
2. Change directory to where you downloaded *Smoke* `cd git/smoke`
3. Run the following command to install the game.

~~~bash
ansible-playbook -i hosts indiana_jones_and_the_fate_of_atlantis.yml
~~~

The installation script will take a few minutes to complete.

# Running the Game

Once the installation is complete, you can start the game by clicking on the *Indiana Jones and the Fate of Atlantis* from the ChromeOS Application Launcher.  The icon will be located in a group labelled *Linux apps*
