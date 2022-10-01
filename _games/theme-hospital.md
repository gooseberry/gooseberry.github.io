---
title: "Theme Hospital"
permalink: /games/theme-hospital/
excerpt: "A variation on the business management style game, Theme Hospital put you in charge to building and running a hospital, to histerical results.  There's strategy involved to running a successful hospital, but the focus here is on having fun.  Tackle the challenges through 12 different hospitals in a game that stands the test of time."
toc: false
header:
  overlay_image: /assets/images/theme_hospital_header.png
  teaser: assets/images/theme_hospital_teaser.png
  actions:
    - label: "Store Page"
      url: "https://www.gog.com/game/theme_hospital"
gallery:
  - url: /assets/images/theme-hospital-screen1.png
    image_path: assets/images/theme-hospital-screen1-th.png
    image_alt: "Screenshot 1"
  - url: /assets/images/theme-hospital-screen2.png
    image_path: assets/images/theme-hospital-screen2-th.png
    image_alt: "Screenshot 2"
  - url: /assets/images/theme-hospital-screen3.png
    image_path: assets/images/theme-hospital-screen3-th.png
    image_alt: "Screenshot 3"
---

*A hospital business simulation game developped by Bullfrog Productions.*

{% include gallery caption="Screenshots from the game on an ASUS Flip C434 running Chrome OS 85 with Crostini." %}


# Requirements
If you haven't yet installed smoke, head on over to the [Getting Started](/docs/getting-started/) section.  You'll find instructions on how to get your ChromeOS device ready to install this game.  After you've done that, follow the instructions below to get the game installed.

# Instructions

1. Open the Chrome browser App and go to your [GOG Library](https://www.gog.com/en/account)
1. Select *Theme Hospital* from your library to expand the download options.
1. Next to the **System** option, select **Windows**.
1. Click on the link under *DOWNLOAD OFFLINE BACKUP GAME INSTALLERS*.  This will download **setup_theme_hospital_v3_(28027).exe** to your **Downloads** folder.
1. Once the download completes, open the **Files** app and browse to the **Downloads** folder.
1. Drag the installer into the **Linux files** folder to copy it to your **crostini** home directory.
1. Start the Terminal App.
1. Copy and paste the following two commands onto the terminal to install **Theme Hospital**.

~~~bash
cd ~/git/smoke
ansible-playbook -i hosts theme_hospital.yml
~~~

These instructions work only if you followed the steps outlined in the [Getting Started](/_docs/01-getting-started.md) section.  If you cloned the smoke repository into a different location, you will need to run the command from that directory.
{: .notice}

The installation script will take a few minutes to complete.  Once the it's done, you can start the game by clicking on the *Theme Hospital* from the ChromeOS Application Launcher.  The icon will be located in a group labelled *Linux apps*.  Have Fun!

# Additional Information
This game runs on the CorsixTH game engine.  Check out the official CorsixTH website to get more information about how this game engine works.

[CorsixTH <i class="fas fa-external-link-alt"></i>](https://corsixth.com/){: .btn .btn--success}
