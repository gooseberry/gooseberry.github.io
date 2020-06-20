---
title: "Theme Hospital"
permalink: /games/theme-hospital/
excerpt: "A hospital business simulation game developped by Bullfrog Productions and published by Electronic Arts."
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

| Store Page                                              | Version | System          | Installation Method                        |
|---------------------------------------------------------|---------|-----------------|--------------------------------------------|
|[Theme Hospital](https://www.gog.com/game/theme_hospital)| v3      | Windows         | Source Port (CorsixTH)                     |

## Screenshots

{% include gallery caption="Screenshots from the game on an ASUS Flip C434 running Chrome OS 85 with Crostini." %}

The instructions on this page will get you running Theme Hospital on a source port of the original game called CorsixTH. You can find out more about this source port by visiting the [CorsixTH webpage](https://corsixth.com/).. While it is possible to get the game to run with DosBox as packaged from GOG.com, this port incorporates a number of bug fixes from the original game and supports high resolution screens without altering the look and feel of the game.

## Prerequisites

- Setup [Linux (Beta)](/docs/linux-beta/#set-up-linux-beta-on-your-chromebook)
- Enable [Pointer lock](/docs/pointer-lock)
- Enable and activate [GPU Support](/docs/gpu-support)
- Download and install [InnoExtract](/docs/innoextract)
- Install the required packages

      sudo apt-get update && sudo apt-get install software-properties-common -y

- Enable the contrib respository and install the corsix-th package
        
        sudo apt-add-repository contrib
        sudo apt-get update && sudo apt-get install corsix-th -y

## Installation Instructions

## Post-Install Clean Up

## Running the Game

## Known Issues

