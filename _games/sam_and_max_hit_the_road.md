---
title: "Sam and Max: Hit the Road"
permalink: /games/sam-and-max-hit-the-road/
excerpt: "Sam and Max: Hit the Road is a point-and-click adventure game developed and published by LucasArts."
header:
  teaser: assets/images/samnmax-screen1-th.png
toc: false
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

| Store Page                      | Version | System          | Installation Method                        |
|---------------------------------|---------|-----------------|--------------------------------------------|
|[Sam and Max: Hit the Road <i class="fas fa-external-link-alt"></i>](https://gog.com/game/sam_max_hit_the_road)| gog-2     | Linux | ScummVM |

## Screenshots

{% include gallery caption="Screenshots from the game on an ASUS Flip C434 running Chrome OS 105 with Crostini." %}

This install method was last tested on 2022-09-15 ont Chrome 105.
{: .notice--info}

The instructions on this page will get you running Sam & Max: Hit the Road on the latest version of [ScummVM <i class="fas fa-external-link-alt"></i>](https://scummvm.org).  While it is possible to run this game with the version of ScummVM packaged from GOG.com, this installer opts to use a common ScummVM installation for all games supported by the engine.

## Installation Instructions

ou will need to download the game installer from the GOG.com website. Select Sam & Max Hit the Road from your library and download the offline backup game installer.

![Sam and Max: Hit the Road Download page](/assets/images/samnmax-download.png)

After the game installer is downloaded, move it into the **Linux Files** folder so that you can access the file from the terminal.

![Sam and Max: Hit the Road installer files](/assets/images/samnmax-files.png)

To install the game, run these two commands from the Terminal App.  The installer will take a few minutes to complete.

    cd git/smoke
    ansible-playbook -i hosts sam_and_max_hit_the_road.yml


## Running the Game

The installation script creates application icons in the Chrome Launcher.  You can find a shortcut for Sam and Max: Hit the Road under the *Linux apps* folder in the Launcher.
