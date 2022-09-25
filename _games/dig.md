---
title: "The Dig"
permalink: /games/dig/
excerpt: "The Dig is a point-and-click adventure game developed and published by LucasArts."
toc: false
header:
  overlay_image: /assets/images/dig_header.png
  teaser: assets/images/dig-teaser.png
action:
  - label: "Store Page"
    url: "https://gog.com/game/the_dig"
gallery:
  - url: /assets/images/dig-screen1.png
    image_path: assets/images/dig-screen1-th.png
    image_alt: "Screenshot 1"
  - url: /assets/images/dig-screen2.png
    image_path: assets/images/dig-screen2-th.png
    image_alt: "Screenshot 2"
  - url: /assets/images/dig-screen3.png
    image_path: assets/images/dig-screen3-th.png
    image_alt: "Screenshot 3"
---

{% include gallery caption="Screenshots from the game on an ASUS Flip C434 running Chrome OS 105 with Crostini." %}

This install method was last tested on 2022-09-15 ont Chrome 105.
{: .notice--info}

# Game Details

| Store Page | Setup File | Installer Type | Game Engine |
|:--|:--|:--|:--|
|[The Dig <i class="fas fa-external-link-alt"></i>](https://gog.com/game/the_dig)| the_dig_en_gog_2_20100.sh | Mojo Setup | [ScummVM <i class="fas fa-external-link-alt"></i>](https://scummvm.org) (Open-Source) |

# Installation Instructions

## Download the game

1. Go to your [GOG Library](https://www.gog.com/en/account) and select *The Dig*.
2. Next to the **System** option, select **Linux**.
3. Click on the link under *DOWNLOAD GAME INSTALLERS*.

![The Dig Download page](/assets/images/dig-download.png)

## Move the installer to Linux Files

After the game installer is downloaded, move it into the **Linux Files** folder so that you can access the file from the terminal.

![The Dig installer files](/assets/images/dig-files.png)

## Run the Ansible playbook

1. Start the Terminal App.
2. Change directory to where you downloaded *Smoke* `cd git/smoke`
3. Run the following command to install the game.

~~~bash
ansible-playbook -i hosts dig.yml
~~~

The installation script will take a few minutes to complete.

# Running the Game

Once teh installation is complete, you can start the game by clicking on the *The Dig* from the ChromeOS Application Launcher.  The icon will be located in a group labelled *Linux apps*
