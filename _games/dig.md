---
title: "The Dig"
permalink: /games/dig/
excerpt: "The Dig is a brilliant experience that dives us masterfully in a strange, but beautiful alien world, full of secrets and surprises.  The game with such an amazing soundtrack that it was released on CD and is available in record stores as we speak.  The Dig is a masterpiece in gaming, and a work of art."
toc: false
header:
  overlay_image: /assets/images/dig_header.png
  teaser: assets/images/dig-teaser.png
  actions:
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

# Requirements
If you haven't yet installed smoke, head on over to the [Getting Started](/docs/getting-started/) section.  You'll find instructions on how to get your ChromeOS device ready to install this game.  After you've done that, follow the instructions below to get the game installed.

# Instructions

1. Open the Chrome browser App and go to your [GOG Library](https://www.gog.com/en/account)
1. Select *The Dig* from your library to expand the download options.
1. Next to the **System** option, select **Linux**.
1. Click on the link under *DOWNLOAD GAME INSTALLERS*.  This will download **the_dig_en_gog_2_20100.sh** to your **Downloads** folder.
1. Once the download completes, open the **Files** app and browse to the **Downloads** folder.
1. Drag the installer into the **Linux files** folder to copy it to your **crostini** home directory.
1. Start the Terminal App.
1. Copy and paste the following two commands onto the terminal to install **The Dig**.

~~~bash
cd ~/git/smoke
ansible-playbook -i hosts dig.yml
~~~

These instructions work only if you followed the steps outlined in the [Getting Started](/_docs/01-getting-started.md) section.  If you cloned the smoke repository into a different location, you will need to run the command from that directory.
{: .notice}

The installation script will take a few minutes to complete.  Once the it's done, you can start the game by clicking on the *The Dig* from the ChromeOS Application Launcher.  The icon will be located in a group labelled *Linux apps*.  Have Fun!

# Additional Information
This game runs on the ScummVM game engine.  Check out the ScummVM section of this site to see how *Smoke* integrates these games into your system. Also have a look at the official ScummVM website to get more information about how this game engine works.

[ScummVM <i class="fas fa-external-link-alt"></i>](https://summvm.org){: .btn .btn--success}
