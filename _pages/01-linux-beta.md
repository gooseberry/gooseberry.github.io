---
title: "Linux (Beta) - Crostini"
permalink: /docs/linux-beta/
toc: true
toc_label: " On this page"
toc_icon: "file-alt"
---

Good Old Chromebook is written to help you get games from your GOG.com library up and running on your own Chromebook.  Chromebooks have undergone significant changes in recent years, both in terms of hardware options and operating system features.  Thanks to many of these changes, you can now find the Google Play Store on many Chromebook models.  You can also turn on a beta option to run a linux virtual machine within your Chromebook called Crostini

Most of the instructions from this website will have you installing your games via Crostini to the Linux virtual container.  

## Crostini

Linux (Beta), also known as Crostini, is a feature in many Chromebook models that lets you run a Linux container from your Chromebook.  Not all models support this, but it required to get some of the games installed and running. If your Chromebook supports Linux applications, you should see a *Linux (Beta)* option in the settings.

### Set up Linux (Beta) on your Chromebook

Follow the steps below to enable Linux (Beta) on your Chromebook

1. At the bottom right, select the time.
2. Select settings <i class="fas fa-cog"></i>
3. Under Linux (Beta), select **Turn On**.
4. Follow the steps on the screen.

Check out the [official Linux (Beta) <i class="fas fa-external-link-alt"></i>](https://support.google.com/chromebook/answer/9145439) support page to learn more about this feature or to get troubleshooting tips if you run into problems.
{: .notice--info}

Once Linux (Beta) is installed, a *Terminal* window will appear that lets you type in Linux commands and intall more tools.  An terminal icon has also been added to the Chromebook application shelf to access the *Terminal* any time.

### Linux System Upgrades

Now that you have the Linux (Beta) feature enabled and you have the black screen of the terminal staring back at you from you screen, it's time to run your first command.  Type in the line below into the terminal to upgrade the Linux container.

    sudo apt update && sudo apt -y upgrade

You should run this command on a regular basis.  This is how Crostini gets it updates, including security patches, from the internet.
{: .notice--info}

Now that you have an updated Crostini container running, check out the [Linux Tools](/docs/linux-tools) page for additional applications you can install.
