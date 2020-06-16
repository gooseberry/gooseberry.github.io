---
title: "GPU Support"
permalink: /docs/gpu-support/
toc: false
toc_label: " On this page"
toc_icon: "file-alt"
---

Google introduced GPU support for Crostini as of Chrome 76.  There are two steps to enable GPU support in crostini, the first is to enable the crostini gpu support flag, the second is to install the 3D graphics libraries in the crostini container.

## GPU Support Flag

Copy the flag address below in the browser to see the status of the Crostini GPU Support flag.  Set this flag to **Enabled**.  After you set this flag, your chromebook will require a restart.

`chrome://flags/#crostini-gpu-support` ***Enabled***

## OpenGL Support

OpenGL support on Crostini is provided through a library called Mesa.  You will need this tool before the crostini container can recognize and take advantage of your gpu.  Some games might not run without this package.  Open the terminal and copy the following line below to install the mesa 3D library.

    sudo apt-get update && sudo apt-get install mesa-utils -y

**Note**:You can verify that GPU support work by running the command `glxinfo -B | grep virgl` - if this command does not return any value, GPU support is not working.
{: .notice--info}
