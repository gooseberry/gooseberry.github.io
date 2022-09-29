---
title: "Descent 2"
permalink: /games/descent-2/
excerpt: "Descent 2, like its predecessor, brings the idea of 6 degrees of freedom (6dof) to the first person genre.  Fast-paced 3 dimensional mazes that are filled with traps and robots intent on killing anything that moves create an environment designed to leave you lost and wondering which side is up while frantically fighting to stay alive."
toc: false
header:
  overlay_image: /assets/images/descent_2_header.png
  teaser: assets/images/descent_2_teaser.png
  actions:
    - label: "Store Page"
      url: "https://gog.com/game/descent_2"
gallery:
  - url: /assets/images/descent-2-screen1.png
    image_path: assets/images/descent-2-screen1-th.png
    image_alt: "Loading Screen"
  - url: /assets/images/descent-2-screen2.png
    image_path: assets/images/descent-2-screen2-th.png
    image_alt: "Main Menu"
  - url: /assets/images/descent-2-screen3.png
    image_path: assets/images/descent-2-screen3-th.png
    image_alt: "In-game screenshot"
---

*A first person shooter developed by Parallax Software.*

{% include gallery caption="Screenshots from the game on an ASUS Flip C434 running Chrome OS 81 with Crostini." %}

# Requirements
If you haven't yet installed smoke, head on over to the [Getting Started](/docs/getting-started/) section.  You'll find instructions on how to get your ChromeOS device ready to install this game.  After you've done that, follow the instructions below to get the game installed.

# Instructions

1. Open the Chrome browser App and go to your [GOG Library](https://www.gog.com/en/account)
1. Select *Descent 2* from your library to expand the download options.
1. Click on the link under *DOWNLOAD OFFLINE BACKUP GAME INSTALLERS*.  This will download **setup_descent_2_1.1_(16596).exe** to your **Downloads** folder.
1. Once the download completes, open the **Files** app and browse to the **Downloads** folder.
1. Drag the installer into the **Linux files** folder to copy it to your **crostini** home directory.
1. Start the Terminal App.
1. Copy and paste the following two commands onto the terminal to install **Descent 2**.

~~~bash
cd ~/git/smoke
ansible-playbook -i hosts descent2.yml
~~~

These instructions work only if you followed the steps outlined in the [Getting Started](/_docs/01-getting-started.md) section.  If you cloned the smoke repository into a different location, you will need to run the command from that directory.
{: .notice}

The installation script will take a few minutes to complete.  Once the it's done, you can start the game by clicking on the *Descent 2* from the ChromeOS Application Launcher.  The icon will be located in a group labelled *Linux apps*.  Have Fun!

# Additional Information
This game runs on the DXX-Rebirth game engine.  Check out the DXX-Rebirth section of this site to see how *Smoke* integrates these games with your system. Also have a look at the official DXX-Rebirth website to get more information about how this game engine works.

[d2x-rebirth <i class="fas fa-external-link-alt"></i>](https://www.dxx-rebirth.com){: .btn .btn--success}

# Known Issues

## Missing videos

Certain Descent movies are not playing, namely the robot introduction video at the beginning of each level and the descent escape videos.  This is related to a known problem introduced with PhysFS 3 and the d2x-rebirth version 0.58.  Details are available on the related [GitHub Issue <i class="fas fa-external-link-alt"></i>](https://github.com/dxx-rebirth/dxx-rebirth/issues/379)
