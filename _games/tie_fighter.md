---
title: "Tie Fighter Collector's CD-ROM"
permalink: /games/tie-fighter/
excerpt: "This game rocks, starting with the awesome music, through the graphics and the great collection of intuitive tables such as the tribute to Epic's first game, Jill of the Jungle, with a table called 'Jungle Pinball'.  They would later develop Extreme Pinball which is a fast paced, surrealistic pinball game."
toc: false
header:
  overlay_image: /assets/images/tie_fighter_header.png
  teaser: assets/images/tie_fighter_teaser.png
  actions:
    - label: "GOG.com Store Page"
      url: "https://www.gog.com/en/game/star_wars_tie_fighter_special_edition"
gallery:
  - url: /assets/images/tie_fighter_screen1.png
    image_path: assets/images/tie_fighter_screen1-th.png
    image_alt: "Screenshot 1"
  - url: /assets/images/tie_fighter_screen2.png
    image_path: assets/images/tie_fighter_screen2-th.png
    image_alt: "Screenshot 2"
  - url: /assets/images/tie_fighter_screen3.png
    image_path: assets/images/tie_fighter_screen3-th.png
    image_alt: "Screenshot 3"
---

{% include gallery caption="Screenshots from the game on an ASUS Flip C434 running Chrome OS 105 with Crostini." %}

This install method was last tested on 2022-09-24 ont Chrome 105.
{: .notice--info}

# Requirements
If you haven't yet installed smoke, head on over to the [Getting Started](/docs/getting-started/) section.  You'll find instructions on how to get your ChromeOS device ready to install this game.  After you've done that, follow the instructions below to get the game installed.

# Instructions

1. Open the Chrome browser App and go to your [GOG Library](https://www.gog.com/en/account)
1. Select *STAR WARS: Tie Fighter Collector's CD (1995)* from your library to expand the download options.
1. Next to the **System** option, select **Linux**.
1. Click on the link under *DOWNLOAD GAME INSTALLERS*.  This will download **gog_star_wars_tie_fighter_special_edition_2.1.0.3.sh** to your **Downloads** folder.
1. Once the download completes, open the **Files** app and browse to the **Downloads** folder.
1. Drag the installer into the **Linux files** folder to copy it to your **crostini** home directory.
1. Start the Terminal App.
1. Copy and paste the following two commands onto the terminal to install **Tie Fighter Collector's CD-ROM**.

~~~bash
cd ~/git/smoke
ansible-playbook -i hosts tie_fighter.yml
~~~

These instructions work only if you followed the steps outlined in the [Getting Started](/_docs/01-getting-started.md) section.  If you cloned the smoke repository into a different location, you will need to run the command from that directory.
{: .notice}

The installation script will take a few minutes to complete.  Once the it's done, you can start the game by clicking on the *Tie Fighter* from the ChromeOS Application Launcher.  The icon will be located in a group labelled *Linux apps*.  Have Fun!

# Additional Information
This game runs on the DosBox emulator.  Checkout the DosBox section of this site to see how *Smoke* integrates these games with your system.  Also have a look at the official DosBox website to get more information about how this emulator works.

[DosBox <i class="fas fa-external-link-alt"></i>](https://www.dosbox.com/){: .btn .btn--success}