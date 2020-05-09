---
title: "Linux Tools"
permalink: /docs/linux-tools/
toc: true
toc_label: " On this page"
toc_icon: "file-alt"
---

Once you have the *Linux (Beta)* feature enabled on your Chromebook, you will need to install some additional tools inside the Linux container before you can install some of the [GOG.com](https://gog.com) games.  Check the prerequisites of the games you want to play before you start installing the tools below.

## OpenGL Support

OpenGL support on Crostini is provided through a tool called Mesa.  You will need this tool to run any game that requires OpenGL. To install OpenGl support, you need to install the mesa-utils package.  Copy the line below into the terminal and wait for the installation to finish.

    sudo apt-get update && sudo apt-get install mesa-utils -y

## innoextract

Some games in the [GOG.com](https://gog.com) library are packaged only with the Windows installer.  You will need to install innoextract to unpack the installer and access the game files.  

1. Download the [innoextract installer <i class="fas fa-file-download"></i>](https://download.opensuse.org/repositories/home:/dscharrer/Debian_10/amd64/innoextract_1.8-0.1_amd64.deb)
2. Go to your Downloads and double-click the innoextract file.
3. Follow the on screen instructions to install innoextract.

Read more about this tool at the [innoextract webpage <i class="fas fa-external-link-alt"></i>](https://constexpr.org/innoextract/)
{: .notice--info}

## bchunk

bchunk converts CD images from bin/cue format to iso.  GOG.com includes the original soundtrack for some games in the form of a bin/cue CD image inside the game installer.  You will need bchunk to extract the audio tracks from the CD image for some games to get the original music working. Copy the line below into the terminal to install the bchunk application.  

    sudo apt-get update && sudo apt-get install bchunk -y
    
## vorbis-tools

If you extracted the audio files from a CD image into wave files, you may need to covert the audio files into a forma that Linux can play back easily.  The vorbis-tools is a collection of tools that can convert and compress these files into ogg-vorbis format (similar to mp3) that will play in your game.`

    sudo apt-get update && sudo apt-get install vorbis-tools -y

## Non-Free Repository


Crostini installs and updates programs from a collection of applications called a repository.  By default, only the main reposisiroty is enabled and you will need to enable the non-free repository to install some packages required for some games.  These commands will enable the *non-free* repository

    sudo apt-get update && sudo apt-get install software-properties-common -y
    sudo apt-add-repository non-free
    sudo apt-get update
    
