---
title: "Indiana Jones and the Fate of Atlantis"
permalink: /games/indiana-jones-and-the-fate-of-atlantis/
excerpt: "Indiana Jones and the Fate of Atlantis stands out as an example of how an adventure game should be made.  With multiple paths to complete the game, adding a ton of replay value.  A plot better than any of the movies, and some of the best puzzles in the whole genre.  A well used licensed game."
toc: false
header:
  overlay_image: /assets/images/Indiana_jones_and_the_fate_of_atlantis_header.png
  teaser: assets/images/Indiana_jones_and_the_fate_of_atlantis_teaser.png
  actions:
    - label: "Store Page"
      url: "https://gog.com/game/indiana_jones_and_the_fate_of_atlantis"
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

# Requirements
If you haven't yet installed smoke, head on over to the [Getting Started](/docs/getting-started/) section.  You'll find instructions on how to get your ChromeOS device ready to install this game.  After you've done that, follow the instructions below to get the game installed.

# Instructions

1. Open the Chrome browser App and go to your [GOG Library](https://www.gog.com/en/account)
1. Select *Indiana Jones and the Fate of Atlantis* from your library to expand the download options.
1. Next to the **System** option, select **Linux**.
1. Click on the link under *DOWNLOAD GAME INSTALLERS*.  This will download **indiana_jones_and_the_fate_of_atlantis_en_gog_2_20145.sh** to your **Downloads** folder.
1. Once the download completes, open the **Files** app and browse to the **Downloads** folder.
1. Drag the installer into the **Linux files** folder to copy it to your **crostini** home directory.
1. Start the Terminal App.
1. Copy and paste the following two commands onto the terminal to install **Indiana Jones and the Fate of Atlantis**.

~~~bash
cd ~/git/smoke
ansible-playbook -i hosts indiana_jones_and_the_fate_of_atlantis.yml
~~~

These instructions work only if you followed the steps outlined in the [Getting Started](/_docs/01-getting-started.md) section.  If you cloned the smoke repository into a different location, you will need to run the command from that directory.
{: .notice}

The installation script will take a few minutes to complete.  Once the it's done, you can start the game by clicking on the *Indiana Jones and the Fate of Atlantis* from the ChromeOS Application Launcher.  The icon will be located in a group labelled *Linux apps*.  Have Fun!

# Additional Information
This game runs on the ScummVM game engine.  Check out the ScummVM section of this site to see how *Smoke* integrates these games with your system. Also have a look at the official ScummVM website to get more information about how this game engine works.

[ScummVM <i class="fas fa-external-link-alt"></i>](https://summvm.org){: .btn .btn--success}