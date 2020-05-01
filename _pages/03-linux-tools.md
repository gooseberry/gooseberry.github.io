---
title: "Linux Tools"
permalink: /docs/linux-tools/
toc: true
toc_label: " On this page"
toc_icon: "file-alt"
---

Once you have the *Linux (Beta)* feature enabled on your Chromebook, you will need to install some additional tools inside the Linux container before you can install some of the [GOG.com](https://gog.com) games.

## OpenGL Support

To install OpenGl support, you need to install the mesa-utils package.  Do this through the *Terminal* by running the command `sudo apt-get update && sudo apt-get install mesa-utils`

## innoextract

Some games in the [GOG.com](https://gog.com) library are packaged only with the Windows installer.  You will need to install innoextract to unpack the installer and access the game files.

1. Download the [innoextract installer <i class="fas fa-file-download"></i>](https://download.opensuse.org/repositories/home:/dscharrer/Debian_10/amd64/innoextract_1.8-0.1_amd64.deb)
2. Go to your Downloads and double-click the innoextract file.
3. Follow the on screen instructions to install innoextract.

Read more about this tool at the [innoextract webpage <i class="fas fa-external-link-alt"></i>](https://constexpr.org/innoextract/)
{: .notice--info}
