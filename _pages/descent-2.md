---
title: "Descent 2"
permalink: /games/descent-2/
toc: true
toc_label: " On this page"
toc_icon: "file-alt"
---

[Store Page <i class="fas fa-external-link-alt"></i>](https://www.gog.com/game/descent_2)

Descent 2 runs on port of the original game called d2x-rebirth (Part of the [DXX-Rebirth <i class="fas fa-external-link-alt"></i>](https://www.dxx-rebirth.com/) project.)

## Prerequisites

- [Linux (Beta)](/docs/linux-beta/#set-up-linux-beta-on-your-chromebook)
- [OpenGL Support](/docs/linux-tools/#opengl-support)
- [Non-Free Repository](/docs/linux-tools/#non-free-repository)
- [innoextract](/docs/linux-tools/#innoextract)
- Chrome Flags
  - [Pointer lock](/docs/chrome-flags/#pointer-lock)
  - [GPU Support](/docs/chrome-flags/#gpu-support) (optional)

## Installation Instructions

Follow the instructions below to install the descent 2 source port and manually copy the files to the .d2x-rebirth directory.  There is an alternative installation method further below that uses scripts to automate the file transfers.  Feel free to use that method as well.

1. Download the Descent 2 Windows offline backup game installer.
2. Move the installer to your *Linux files* folder
3. Open the *Terminal* app
4. `sudo apt-get install d2x-rebirth`
4. `mkdir tmp_gog && innoextract -d tmp_gog setup_descent_2_1.1_\(16596\).exe`
5. Copy the following files from tmp_gog/app to the .d2x-rebirth folder in your home directory
6. Rename all the files in the .d2x-rebirth directory to lowercase.

**Note**: The file name of the installer may not be identical, the commands must be modified if the filename does not match.
{: .notice--info}

## Alternative Installation

This method downloads additional scripts from the web that will run the innoextract tool and place the files in the appropriate folder for you.

1. Download the Descent 2 Windows offline backup game installer.
2. Move the installer to your *Linux files* folder
3. Open the *Terminal* app
4. `sudo apt-get install d2x-rebirth`
5.

After completing these steps, a Darkest Dungeon icon will appear in the app launcher.

## Known Issues
