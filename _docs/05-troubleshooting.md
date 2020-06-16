---
title: "Troubleshooting"
permalink: /docs/troubleshooting/
toc: true
toc_label: " On this page"
toc_icon: "file-alt"
---

This page hosts a collection of problems that you may encounter on your chrome book.


## No Sound

### Symptoms

No sound from your Linux Games

#### The Fix

To fix this problem, you will need to restart the Linux (Beta) container.

Management of the Crostini container is done from the *Chrome OS Developer Shell*, **crosh**.  Open the shell on your chromebook by hitting **ctrl + alt + t**.  This will open a new tab on your browser running crosh. Run the following command to stop the Linux container.

    vmc stop termina

Wait for the crosh prompt `crosh>` to return, then you can start your game.  It will take a few moments to start as the container will need to restart, but you should have sound after that. 

## *Linux files* disappear

### Symptoms

Your *Linux files* show up empty even if you can see them in the terminal.

### Solution

Restart the Linux (Beta) container.  To restart the container, right-click on the *Terminal* application to bring up a content menu and click on **Shut down Linux (Beta)**.  Wait for Crostini to shut down.

After the container has been shut down, click on *Linux files* in the files app and refresh the view, your files should reappear.
