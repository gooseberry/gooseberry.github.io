---
title: "Sam and Max: Hit the Road"
permalink: /games/sam-and-max-hit-the-road/
excerpt: "A classic point-and-click adventure game with great humour, excellent voice acting, and a beautiful art style.  Sam and Max provide a near endless supply of one-liners and puns each one more crude than the last.  In a collection of adventure games, Sam and Max: Hit the Road fun and funny at an unparalleled level."
toc: false
header:
  overlay_image: /assets/images/samnmax_header.png
  teaser: assets/images/samnmax_teaser.png
  actions:
    - label: "Store Page"
      url: "https://gog.com/game/sam_max_hit_the_road"
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

# Requirements
If you haven't yet installed smoke, head on over to the [Getting Started](/docs/getting-started/) section.  You'll find instructions on how to get your ChromeOS device ready to install this game.  After you've done that, follow the instructions below to get the game installed.

# Instructions

1. Open the Chrome browser App and go to your [GOG Library](https://www.gog.com/en/account)
1. Select *Sam & Max: Hit the Road* from your library to expand the download options.
1. Next to the **System** option, select **Linux**.
1. Click on the link under *DOWNLOAD GAME INSTALLERS*.  This will download **sam_and_max_hit_the_road_en_gog_2_20100.sh** to your **Downloads** folder.
1. Once the download completes, open the **Files** app and browse to the **Downloads** folder.
1. Drag the installer into the **Linux files** folder to copy it to your **crostini** home directory.
1. Start the Terminal App.
1. Copy and paste the following two commands onto the terminal to install **The Dig**.

~~~bash
cd ~/git/smoke
ansible-playbook -i hosts sam_and_max_hit_the_road.yml
~~~

These instructions work only if you followed the steps outlined in the [Getting Started](/_docs/01-getting-started.md) section.  If you cloned the smoke repository into a different location, you will need to run the command from that directory.
{: .notice}

The installation script will take a few minutes to complete.  Once the it's done, you can start the game by clicking on the *Sam and Max* from the ChromeOS Application Launcher.  The icon will be located in a group labelled *Linux apps*.  Have Fun!

# Additional Information
This game runs on the ScummVM game engine.  Check out the ScummVM section of this site to see how *Smoke* integrates these games with your system. Also have a look at the official ScummVM website to get more information about how this game engine works.

[ScummVM <i class="fas fa-external-link-alt"></i>](https://summvm.org){: .btn .btn--success}