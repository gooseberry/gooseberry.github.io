---
title: "Linux Tools"
permalink: /docs/linux-tools/
toc: true
toc_label: " On this page"
toc_icon: "file-alt"
---

Once you have the *Linux (Beta)* feature enabled on your Chromebook, you will need to install some additional tools inside the Linux container before you can install some of the [GOG.com](https://gog.com) games.

##innoextract

Some games in the [GOG.com](https://gog.com) library are packaged only with the Windows installer.  You will need to install innoextract to unpack the installer and access the game files.  Enter the commands below in the *Terminal* app to install the latest version of innoextract.

    echo 'deb http://download.opensuse.org/repositories/home:/dscharrer/Debian_10/ /' > /etc/apt/sources.list.d/home:dscharrer.list
    wget -nv https://download.opensuse.org/repositories/home:dscharrer/Debian_10/Release.key -O Release.key
    apt-key add - < Release.key
    apt-get update
    apt-get install innoextract 

Check out the [innoextract webpage<i class="fas fa-external-link-alt"></i>](https://constexpr.org/innoextract/) and the [innoextract reporistory<i class="fas fa-external-link-alt"></i>](https://software.opensuse.org//download.html?project=home%3Adscharrer&package=innoextract) page to learn more about this
 feature or to get troubleshooting tips if you run into problems.  
{: .notice--info}
