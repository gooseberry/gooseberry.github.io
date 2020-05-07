---
title: "Troubleshooting"
permalink: /docs/troubleshooting/
toc: true
toc_label: " On this page"
toc_icon: "file-alt"
---

This page hosts a collection of problems that you may encounter on your chrome book.

## Issues

### No Sound

Sometimes the sound backend of Crostini will crash.  You will still be able to play your games, but anything that runs on the Linux (Beta) system won't have any sound.

#### The Fix

To fix this problem, you will need to restart the Linux (Beta) container.

Management of the Crostini container is done from the *Chrome OS Developer Shell*, **crosh**.  Open the shell on your chromebook by hitting **ctrl + alt + t**.  This will open a new tab on your browser running crosh. Run the following command to stop the Linux container.

    vmc stop termina

Wait for the crosh prompt `crosh>` to return, then you can start your game.  It will take a few moments to start as the container will need to restart, but you should have sound after that. 
