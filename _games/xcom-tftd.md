---
title: "X-COM Terror from the Deep"
permalink: /games/xcom-terror-from-the-deep/
excerpt: "A science fiction strategy video game developed by Mythos Games and published by MicroProse"
toc: false
header:
  teaser: assets/images/xcom-tftd-floppy.png
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

# Requirements
If you haven't yet installed smoke, head on over to the [Getting Started](/docs/getting-started/) section.  You'll find instructions on how to get your ChromeOS device ready to install this game.  After you've done that, follow the instructions below to get the game installed.

# Instructions

1. Open the Chrome browser App and go to your [GOG Library](https://www.gog.com/en/account)
1. Select *The Dig* from your library to expand the download options.
1. Click on the link under *DOWNLOAD OFFLINE BACKUP GAME INSTALLERS*.  This will download **setup_x-com_terror_from_the_deep_2.1_(28046).exe** to your **Downloads** folder.
1. Once the download completes, open the **Files** app and browse to the **Downloads** folder.
1. Drag the installer into the **Linux files** folder to copy it to your **crostini** home directory.
1. Start the Terminal App.
1. Copy and paste the following two commands onto the terminal to install **X-COM: Terror from the Deep**.

~~~bash
cd ~/git/smoke
ansible-playbook -i hosts xcom_tftd.yml
~~~

These instructions work only if you followed the steps outlined in the [Getting Started](/_docs/01-getting-started.md) section.  If you cloned the smoke repository into a different location, you will need to run the command from that directory.
{: .notice}

The installation script will take a few minutes to complete.  Once the it's done, you can start the game by clicking on the *OpenXcom* from the ChromeOS Application Launcher.  The icon will be located in a group labelled *Linux apps*.  Have Fun!

# Additional Information
This game runs on the OpenXcom game engine.  Check out the OpenXcom section of this site to see how *Smoke* integrates these games with your system. Also have a look at the official OpenXcom website to get more information about how this game engine works.

[OpenXcom <i class="fas fa-external-link-alt"></i>](https://openxcom.org/){: .btn .btn--success}
