---
title: "Torchlight II"
permalink: /games/torchlight-ii/
excerpt: "Casual, fun, and addictive.  A rewarding game with an endless supply of increasingly powerful loot to deal with increasingly powerful monsters.  The game world is beautiful and the leveling system is pefectly matched in this amazing action role playing game created with a timeless yet fresh artstyle."
toc: false
header:
  overlay_image: /assets/images/torchlight_ii_header.png
  teaser: assets/images/torchlight_ii_teaser.png
  actions:
    - label: "Store Page"
      url: "https://www.gog.com/game/torchlight_ii"
gallery:
  - url: /assets/images/torchlight-ii-screen1.png
    image_path: assets/images/torchlight-ii-screen1-th.png
    image_alt: "Loading Screen"
  - url: /assets/images/torchlight-ii-screen2.png
    image_path: assets/images/torchlight-ii-screen2-th.png
    image_alt: "Main Menu"
  - url: /assets/images/torchlight-ii-screen3.png
    image_path: assets/images/torchlight-ii-screen3-th.png
    image_alt: "In-game screenshot"
---

*An action role-playing dungeon crawler video game.*

{% include gallery caption="Torchlight II screenshots from an ASUS Flip C434 running Chrome OS 81 with Crostini." %}

# Requirements
If you haven't yet installed smoke, head on over to the [Getting Started](/docs/getting-started/) section.  You'll find instructions on how to get your ChromeOS device ready to install this game.  After you've done that, follow the instructions below to get the game installed.

# Instructions

1. Open the Chrome browser App and go to your [GOG Library](https://www.gog.com/en/account)
1. Select *Torchlight II* from your library to expand the download options.
1. Next to the **System** option, select **Linux**.
1. Click on the link under *DOWNLOAD GAME INSTALLERS*.  This will download **gog_torchlight_2_2.0.0.2.sh** to your **Downloads** folder.
1. Once the download completes, open the **Files** app and browse to the **Downloads** folder.
1. Drag the installer into the **Linux files** folder to copy it to your **crostini** home directory.
1. Start the Terminal App.
1. Copy and paste the following two commands onto the terminal to install **Torchlight II**.

~~~bash
cd ~/git/smoke
ansible-playbook -i hosts torchlight2.yml
~~~

These instructions work only if you followed the steps outlined in the [Getting Started](/_docs/01-getting-started.md) section.  If you cloned the smoke repository into a different location, you will need to run the command from that directory.
{: .notice}

The installation script will take a few minutes to complete.  Once the it's done, you can start the game by clicking on the *Torchlight II* from the ChromeOS Application Launcher.  The icon will be located in a group labelled *Linux apps*.  Have Fun!

# Additional Information
This game uses the native installer from gog with some default values to automatically install the game onto your system without any user interactions.  Check out the section of native installers of this site to see how *Smoke* configures the games on your system.
