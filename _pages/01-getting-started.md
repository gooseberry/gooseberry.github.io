---
title: "Getting Started"
permalink: /docs/getting-started/
toc: true
toc_label: " On this page"
toc_icon: "file-alt"
---

Linux (Beta), also known as Crostini, is a feature in many Chromebook models that lets you run a Linux container from your Chromebook.  Not all models support this, but it required to get some of the games installed and running. By default this feature is turned off.

## Set up Linux (Beta) on your Chromebook

Follow the steps below to enable Linux (Beta) on your Chromebook

1. At the bottom right, select the time.
2. Select settings <i class="fas fa-cog"></i>
3. Under Linux (Beta), select **Turn On**.
4. Follow the steps on the screen.

Check out the [official Linux (Beta) <i class="fas fa-external-link-alt"></i>](https://support.google.com/chromebook/answer/9145439) support page to learn more about this feature or to get troubleshooting tips if you run into problems.  
{: .notice--info}

Once Linux (Beta) is installed, a *Terminal* window will appear that lets you type in Linux commands and intall more tools.  An icon, 
<span class="fa-stack fa-1x">
  <i class="fas fa-circle fa-stack-2x"></i>
  <i class="fas fa-terminal fa-stack-1x fa-inverse"></i>
</span>
, has been added to the Chromebook shelf to access the *Terminal* any time

### Linux System Upgrades

Now that you have the Linux (Beta) feature enabled and you have the black screen of the terminal staring back at you from you screen, it's time to run your first command.  Type in the line below into the terminal to upgrade the Linux container.

    sudo apt update && sudo apt -y upgrade
