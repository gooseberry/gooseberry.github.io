---
title: "Theme Hospital"
permalink: /games/theme-hospital/
excerpt: "A hospital business simulation game developped by Bullfrog Productions."
toc: false
header:
  teaser: assets/images/theme-hospital-screen1-th.png
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

# Game Details

| Store Page | Setup File | Installer Type | Game Engine |
|:--|:--|:--|:--|
|[Theme Hospital](https://www.gog.com/game/theme_hospital)| setup_theme_hospital_v3_(28027).exe | Inno Setup | [CorsixTH <i class="fas fa-external-link-alt"></i>](https://corsixth.com/) (Open-Source) |

# Installation Instructions

## Download the game

1. Go to your [GOG Library](https://www.gog.com/en/account) and select *Theme Hospital*.
2. Next to the **System** option, select **Linux**.
3. Click on the link under *DOWNLOAD GAME INSTALLERS*.

![Theme Hospital Download Page](/assets/images/theme-hospital-download.png)

If you click on the *Download and Install now* link, it will download the galaxy client installer. You won’t be able to install the game on your Chromebook with this installer.
{: .notice--warning}

After the game installer is downloaded, move it into the **Linux Files** folder so that you can access the file from the terminal.

![Theme Hospital Files](/assets/images/theme-hospital-files.png)

## Run the Ansible playbook

1. Start the Terminal App.
2. Change directory to where you downloaded *Smoke* `cd git/smoke`
3. Run the following command to install the game.

~~~bash
ansible-playbook -i hosts them_hospital.yml
~~~

The installation script will take a few minutes to complete.

## Running the Game

Once the installation is complete. You can start the game by clicking on the CorsixTH icon from the Chrome OS Application Launcher. The icon will be located in a group labelled Linux apps
