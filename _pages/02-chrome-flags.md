---
title: "Chrome Flags"
permalink: /docs/chrome-flags/
toc: true
toc_label: " On this page"
toc_icon: "file-alt"
---

Some of the advanced or experimental features of Linux (Beta) are disabled by default.  These can be activated by setting the approriate flag in [chrome://flags](chrome://flags)

## Pointer lock

Allow Linux applications to request a pointer lock, i.e. exclusive user of the mount pointer.

[Pointer lock for Linux applications](chrome://flags/#exo-pointer-lock) ***Enabled***

## GPU Support

Enable Crostini GPU Support.

[Crostini GPU Support](chrome://flags/#crostini-gpu-support) ***Enabled***

**Note**: To access GPU support from Crostini, you need to install the mesa-utils package.  You can verify that GPU support work by running the command `glxinfo -B | grep virgl` - if this command does not return any value, GPU support is not working.
{: .notice--info}