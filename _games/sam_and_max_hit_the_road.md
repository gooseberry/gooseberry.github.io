---
title: "Sam and Max: Hit the Road"
permalink: /games/sam-and-max-hit-the-road/
excerpt: "Sam and Max: Hit the Road is a point-and-click adventure game developed and published by LucasArts."
header:
  teaser: assets/images/samnmax-floppy.png
toc: false
gallery:
  - url: /assets/images/samnmax-screen1.png
    image_path: assets/images/samnmax-screen1-th.png
    image_alt: "Screenshot 1"
  - url: /assets/images/samnmax-screen2.png
    image_path: assets/images/samnmax-screen2-th.png
    image_alt: "Screenshot 2"
  - url: /assets/images/samnmax-screen3.png
    image_path: assets/images/samnmax-screen3-th.png
    image_alt: "Screenshot 3"
---

{% include gallery caption="Screenshots from the game on an ASUS Flip C434 running Chrome OS 105 with Crostini." %}

This install method was last tested on 2022-09-15 ont Chrome 105.
{: .notice--info}

# Game Details

| Store Page | Setup File | Installer Type | Game Engine |
|:--|:--|:--|:--|
| [Sam and Max: Hit the Road <i class="fas fa-external-link-alt"></i>](https://gog.com/game/sam_max_hit_the_road) | sam_and_max_hit_the_road_en_gog_2_20100.sh | Mojo Setup | [ScummVM <i class="fas fa-external-link-alt"></i>](https://scummvm.org) (Open-Source) |

# Installation Instructions

## Download the game

1. Go to your [GOG Library](https://www.gog.com/en/account) and select *Sam and Max Hit the Road*.
2. Next to the **System** option, select **Linux**.
3. Click on the link under *DOWNLOAD GAME INSTALLERS*.

![Sam and Max: Hit the Road Download page](/assets/images/samnmax-download.png)

## Move the installer to Linux Files

After the game installer is downloaded, move it into the **Linux Files** folder so that you can access the file from the terminal.

![Sam and Max: Hit the Road installer files](/assets/images/samnmax-files.png)

## Run the Ansible playbook

1. Start the Terminal App.
2. Change directory to where you downloaded *Smoke* `cd git/smoke`
3. Run the following command to install the game.

~~~bash
ansible-playbook -i hosts sam_and_max_hit_the_road.yml
~~~

The installation script will take a few minutes to complete.


## Running the Game

The installation script creates application icons in the Chrome Launcher.  You can find a shortcut for Sam and Max: Hit the Road under the *Linux apps* folder in the Launcher.
