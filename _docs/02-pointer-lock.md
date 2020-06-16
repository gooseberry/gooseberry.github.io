---
title: "Pointer Lock"
permalink: /docs/pointer-lock/
toc: false
toc_label: " On this page"
toc_icon: "file-alt"
---

Allow Linux applications to request a pointer lock, i.e. exclusive user of the mount pointer.  There are two flags here and both should be enabled for best results.

`chrome://flags/#exo-pointer-lock` ***Enabled***

`chrome://flags/#enable-pointer-lock-options` ***Enabled***


## GPU Support

Enable Crostini GPU Support.

`chrome://flags/#crostini-gpu-support` ***Enabled***

**Note**: To access GPU support from Crostini, you need to install the mesa-utils package.  You can verify that GPU support work by running the command `glxinfo -B | grep virgl` - if this command does not return any value, GPU support is not working.
{: .notice--info}
