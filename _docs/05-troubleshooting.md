---
title: "Troubleshooting"
permalink: /docs/troubleshooting/
toc: false
toc_label: " On this page"
toc_icon: "file-alt"
---

This page outlines some of the common problems you may encounter with your games along with some tips to try to resolve these.

## No Sound

Occasionaly, applications running from the *Linux (Beta)* container are not outputting any sound.

### Solution

To fix this problem, you will need to restart the Linux (Beta) container.  Right-click on the *Terminal* App to bring up the context menu and select **Shut Down Linx (Beta)**.  Note, this will close any Linux applications you may have running.  Wait 10 to 20 seconds before trying to restart your game.

## *Linux files* disappear

Your *Linux files* show up empty even if you can see them in the terminal.

### Solution

Sometimes, restarting the Linux (Beta) container resolves this problem..  To restart the container, right-click on the *Terminal* app to bring up a content menu and click on **Shut down Linux (Beta)**.  Note, this will close any Linux applications you may have running.  Wait for Crostini to shut down.  After the container has been shut down, click on *Linux files* in the files app and refresh the view, your files should reappear.

If shutting down the Linux (Beta) container doesn't solve this problem, you can try rebooting your Chromebook.  Hold the **Reload** button on your keyboard and press the power button on your Chromebook to restart it.

## Mouse Lock

Even with the [Pointer Lock Flags](/docs/pointer-lock) enabled, you may encounter situations where the pointer hits an invisible wall.

### Solution

In most cases, you can get around this problem by disabling fullscreen on the game and clicking the mouse somewhere on the game screen.  This will lock the mouse pointer to the Linux game and should resolve the invisible wall problem.

## Local LAN

Your Chromebook does not have direct access to the network interface.  Consequently, you will not be able to join or find local LAN games hosted on the same network.  Likewise, other computers on your network will not be able to join games hosted by your Chromebook.

### Solution

I believe the workaround to get this working involves the use of the `chrome://flags/#crostini-port-forwarding` flag.  I don't play much multplayer so I'm not likely to get around to testing this anytime soon..
