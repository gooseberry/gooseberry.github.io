---
title: "Epic Pinball The Complete Collection"
permalink: /games/epic-pinball/
excerpt: "Epic Pinball is a pinball game developed by James Schmalz and published by Epic MegaGames."
toc: false
header:
  teaser: assets/images/epic-pinball-screen1-th.png
gallery:
  - url: /assets/images/epic-pinball-screen1.png
    image_path: assets/images/epic-pinball-screen1-th.png
    image_alt: "Screenshot 1"
  - url: /assets/images/epic-pinball-screen2.png
    image_path: assets/images/epic-pinball-screen2-th.png
    image_alt: "Screenshot 2"
  - url: /assets/images/epic-pinball-screen3.png
    image_path: assets/images/epic-pinball-screen3-th.png
    image_alt: "Screenshot 3"
  - url: /assets/images/epic-pinball-screen4.png
    image_alt: "Screenshot 4"
---

{% include gallery caption="Screenshots from the game on an ASUS Flip C434 running Chrome OS 105 with Crostini." %}

This install method was last tested on 2022-09-24 ont Chrome 105.
{: .notice--info}

# Game Details

| Store Page | Setup File | Installer Type | Game Engine |
|:--|:--|:--|:--|
|[Epic Pinball <i class="fas fa-external-link-alt"></i>](https://www.gog.com/game/epic_pinball_the_complete_collection)| epic_pinball_the_complete_collection_en_1_0_16760.sh | Mojo Setup | [DosBox <i class="fas fa-external-link-alt"></i>](https://www.dosbox.com/) (Open-Source) |

# Installation Instructions

## Download the game

1. Go to your [GOG Library](https://www.gog.com/en/account) and select *Epic Pinball: The Complete Collection*.
2. Next to the **System** option, select **Linux**.
3. Click on the link under *DOWNLOAD GAME INSTALLERS*.

![Epic Pinball Download page](/assets/images/epic-pinball-download.png)

## Move the installer to Linux Files

After the game installer is downloaded, move it into the **Linux Files** folder so that you can access the file from the terminal.

![Epic Pinball installer files](/assets/images/epic-pinball-files.png)

## Run the Ansible playbook

1. Start the Terminal App.
2. Change directory to where you downloaded *Smoke* `cd git/smoke`
3. Run the following command to install the game.

~~~bash
ansible-playbook -i hosts epic_pinball.yml
~~~

The installation script will take a few minutes to complete.

# Running the Game

Once teh installation is complete, you can start the game by clicking on the *Epic Pinball* from the ChromeOS Application Launcher.  The icon will be located in a group labelled *Linux apps*
