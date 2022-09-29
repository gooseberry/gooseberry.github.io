---
title: "Getting Started"
permalink: /docs/getting-started/
toc: false
toc_label: " On this page"
toc_icon: "file-alt"
---

Smoke is a collection of [Ansible](https://docs.ansible.com) deployments roles, variables, and playbooks to automate the installation of various [GOG.com](https://gog.com) games on the Linux Development Environment (LDE) of a ChromeOS device.

## Description

The project sets up an Ansible control node within the Linux Environment of a Chromebook and applies the modules from this repository locally to install and configure various games from GOG.com installers. Game configurations are stored as modules within the roles section of this repository and are applied to the local system through Playbooks from the base directory of the Smoke repository. I started this project to quickly recover games on my Chromebook following powerwashing.

## Features

* **Ready to run games**.  All attempts are made to configure the games to run optimally on your Chromebook, often with modern or tweaked keyboard configurations to get your playing as quickly as possible.
* **ChromeOS Support**.  Smoke is designed to run on ChromeOS hardware, bringing support to some much beloved games to your Chromebook.
* **No Launcher Software**.  Install the game and play the game.  All the supported games will show up in the built-in Chrome App launcher, there is no additional software that tries to manage your library for you.
* **Optimized Versions**.  When available, a more recent open-source port of the game engine will be installed to replace the old engine for improved user experience.


# Getting Started

**INFO:** Follow the instructions in this section to get your system up and running.  Keep reading below the instructions, you will find the details what each step in this guide does.
{: .notice--info}

## Part One: Set Chrome flags
1. Open the Chrome browser.
1. Click on the address bar and type `chrome://flags`, then hit the Enter key.
1. Click on the search bar and type `exo-pointer-lock`.
1. Click on the drop-down menu next to the *Pointer lock for Linux applications* flag and select **Enabled**
1. Click on the search bar and type `crostini-gpu-support`.
1. Click on the drop-down meny next to the *Crostini GPU Support* flag and select **Enabled**
1. Click on **Relaunch** at the bottom of the Chrome flags window to apply the changes and restart your Chromebook.

## Part Two: Enable and Launch Linux Development Environment (LDE)
1. At the bottom right, click on the time.
1. Click on the settings Icon ⚙️.
1. Expand the **Advanced** option and click on **Developers**
1. Next to Linux development environment, Click on Turn On.
1. Follow the steps on the screen.

**QUICK TIP:** The default space setting for LDE is 10G.  You may need more hard drive space if you intend to install many games.
{: .notice--success}

## Part Three: Installing Ansible and cloning Smoke
Once LDE is fully deployed, you will be presented with a terminal screen.  From this screen, paste the following lines to complete the installation of the Smoke tools.

    sudo apt-get update && sudo apt-get upgrade -y
    sudo apt-get install python3-pip
    export PATH=$PATH:~/.local/bin
    python3 -m pip install --user ansible
    mkdir ~/git
    cd ~/git
    git clone https://github.com/gooseberry/smoke.git

The commands will take a few minutes to complete.  Once this step is done, you're all set to start installing any of the support GOG.com games onto your Chromebook.  Head on over to the [Supported Games](/games ) to get started.

# Chrome Flags

Hidden or experimental features that are not intended for use by standard users.  These are typically features that Google are testing to be included in future releases and can be enabled through specific flags by opening the Chrome browser and typing `chrome://flags` in the address bar and hitting **enter**.  This opens a new window on your Chromebook titled **Experiments** and as the banner at the top of this window states, some of these experimental flags can negatively impact your ChromeOS experience.  To get the most of the games you install on LDE, this section guides you on how to set two flags: the *Crostini GPU Support* flag, and the *Pointer Lock for Linux Applications* flag.

## Crostini GPU Support

This flag enables the Linux Development Environment to have direct access to the GPU.  This flag is required for Crostini to run OpenGL and other 3D graphic processes on the system.

## Pointer Lock for Linux Applications

This flag enables the applications in the Linux container to lock the mouse pointer to the application screen.  This keeps the mouse inside the game screen so that if you cannot scroll past the screen and lose the mouse focus.

# Linux Development Environment - Codename: Crostini

Linux was added to ChromeOS as a "developer feature" for users to access common programming tools through the Linux platform from a ChromeOS device.  It didn't take long for ChromeOS users to start exploiting this feature to install games not designed to run on Chromebooks such as Minecraft and Steam.  This project uses this Linux system to install and run various old games (and some newer ones too) on Chromebooks.

# Ansible

Ansible is a tool developed to automate the installation and configuration of IT infrastructures.  By installing a control node on your Chromebook, you can make use of all the scripts from this repository to automatically configure and deploy games to your system.  This is not the intended purpose of Ansible, but by taking advantage of the design principles behind this program, I believe I have created the easiest and most reliable mechanism for automating the installation of these games.

Enjoy the features offered by this project and if you're interested in learning more, make sure to check out the [[Under the Hood]] section.
