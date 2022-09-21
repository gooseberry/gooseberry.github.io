---
title: "Indiana Jones and the Fate of Atlantis"
permalink: /games/indiana-jones-and-the-fate-of-atlantis/
excerpt: "Indiana Jones and the Fate of Atlantis is a point-and-click adventure game developed and published by LucasArts."
header:
  teaser: assets/images/atlantis-screen2-th.png
toc: false
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

| Store Page                      | Version | System          | Installation Method                        |
|---------------------------------|---------|-----------------|--------------------------------------------|
|[Indiana Jones and the fate of Atlantis <i class="fas fa-external-link-alt"></i>](https://gog.com/game/indiana_jones_and_the_fate_of_atlantis)| gog-2     | Linux | ScummVM |

## Screenshots

{% include gallery caption="Screenshots from the game on an ASUS Flip C434 running Chrome OS 105 with Crostini." %}

This install method was last tested on 2022-09-15 ont Chrome 105.
{: .notice--info}

The instructions on this page will get you running Indiana Jones and the Fate of Atlantis on the latest version of [ScummVM <i class="fas fa-external-link-alt"></i>](https://scummvm.org).  While it is possible to run this game with the version of ScummVM packaged from GOG.com, this installer opts to use a common ScummVM installation for all games supported by the engine.

## Installation Instructions

ou will need to download the game installer from the GOG.com website. Select Indiana Jones and the Fate of Atlantis from your library and download the offline backup game installer.

![Indiana Jones and the Fate of Atlantis  Download page](/assets/images/atlantis-download.png)

After the game installer is downloaded, move it into the **Linux Files** folder so that you can access the file from the terminal.

![Indiana Jones and the Fate of Atlantis installer files](/assets/images/atlantis-files.png)

To install the game, run these two commands from the Terminal App.  The installer will take a few minutes to complete.

    cd git/smoke
    ansible-playbook -i hosts indiana_jones_and_the_fate_of_atlantis.yml


## Running the Game

The installation script creates application icons in the Chrome Launcher.  You can find a shortcut for Indiana Jones and the Fate of Atlantis under the *Linux apps* folder in the Launcher.
