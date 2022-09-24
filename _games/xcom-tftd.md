---
title: "X-COM Terror from the Deep"
permalink: /games/xcom-terror-from-the-deep/
excerpt: "A science fiction strategy video game developed by Mythos Games and published by MicroProse"
toc: false
header:
  teaser: assets/images/xcom-tftd-screen4-th.png
gallery:
  - url: /assets/images/xcom-tftd-screen1.png
    image_path: assets/images/xcom-tftd-screen1-th.png
    image_alt: "Screenshot 1"
  - url: /assets/images/xcom-tftd-screen2.png
    image_path: assets/images/xcom-tftd-screen2-th.png
    image_alt: "Screenshot 2"
  - url: /assets/images/xcom-tftd-screen3.png
    image_path: assets/images/xcom-tftd-screen3-th.png
    image_alt: "Screenshot 3"
  - url: /assets/images/xcom-tftd-screen4.png
    image_alt: "Screenshot 4"
---

*A science fiction strategy game developped by Mythos Games*

{% include gallery caption="Screenshots from the game on an ASUS Flip C434 running Chrome OS 105 with Crostini." %}

# Game Details

| Store Page | Setup File | Installer Type | Game Engine |
|:--|:--|:--|:--|
|[X-COM Terror from the Deep <i class="fas fa-external-link-alt"></i>](https://www.gog.com/game/xcom_terror_from_the_deep)|  | setup_x-com_terror_from_the_deep_2.1_(28046).exe | Inno Setup | [OpenXcom <i class="fas fa-external-link-alt"></i>](https://openxcom.org/) (Open-Source Port) |

# Installation Instructions

## Download the game

1. Go to your [GOG Library](https://www.gog.com/en/account) and select *X-COM Terror from the Deep*.
2. Click on the link under *DOWNLOAD OFFLINE BACKUP GAME INSTALLERS*.

![X-COM Terror from the Deep Download Page](/assets/images/xcom-tftd-download.png)

If you click on the *Download and Install now* link, it will download the galaxy client installer. You won’t be able to install the game on your Chromebook with this installer.
{: .notice--warning}

## Move the installer to Linux Files

After the game installer is downloaded, move it into the **Linux Files** folder so that you can access the file from the terminal.

![X-COM Terror from the Deep Files](/assets/images/xcom-tftd-files.png)

## Run the Ansible playbook

1. Start the Terminal App.
2. Change directory to where you downloaded *Smoke* `cd git/smoke`
3. Run the following command to install the game.

~~~bash
ansible-playbook -i hosts xcom_tftd.yml
~~~

The installation script will take a few minutes to complete.

## Running the Game

Once the installation is complete. You can start the game by clicking on the OpenXcom icon from the Chrome OS Application Launcher. The icon will be located in a group labelled *Linux apps*
