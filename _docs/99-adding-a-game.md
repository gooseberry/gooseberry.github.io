---
title: "Adding a new game"
permalink: /docs/how-it-works/adding-game/
toc: false
toc_label: " On this page"
toc_icon: "file-alt"
---

How do I create an installer for a game?

Note: The guide on this page walks you through the process of creating an installer for [The Dig <i class="fas fa-external-link-alt></i>](https://www.gog.com/game/the_dig) using the [ScummVM <i class="fas fa-external-link-alt></i>](https://scummvm.org).
{: .notice--info}

# Information collection

The process of creating a game install script is manual and requires some digging around to get all the information required.  Before you can start to write the instructions for installing the game, you will need the following:

1. The installer from gog.com (either Windows or Linux)
2. Access to the [ScummVM Supported Games Wiki](https://wiki.scummvm.org/index.php?title=Category:Supported_Games)
3. 

# Set-up the Framework
Once you have all the tools you will need to create the script, it's time to get your system organized.

## GitHub 
If you haven't already done so, create a fork of the smoke project into your own github account and clone this repository to your computer.  Once cloned onto your computer, you can create a branch where you can track the changes you made without impacting the main code base.

### Creating a new branch for The Dig
In our example here, the commands below will create a branch called **new-game-the-dig** and switch our local git repository to this branch.  Following this, we'll sync up our new branch to the GitHub website so we can recover our work.

When creating a branch, select a meaningful name that describes what you are trying to achieve so that it's easier for other to figure out and to help you out if you don't work on the project for some time.
{: .notice--info}

~~~bash
git checkout -b "new-game-the-dig"
git add -A
git commit -m "new branch created for The Dig"
git push --set-upstream origin new-game-the-dig
~~~

## Ansible Roles
Smoke uses Ansible roles to identify what games you want to install and apply the necessary changes to your system accordingly.  A different role is created for each game along with a playbook to assign that role to your computer.  The playbook is how we trigger the installation.

### Creating a role for The Dig
From the terminal, we'll type in the commands below which will create a role called **dig** and populate it with empty files that form the framework of the role.  We'll also commit this framework to our git branch and sync it with GitHub.

~~~bash
mkdir -p {roles/dig/tasks,roles/dig/templates/,roles/dig/vars}
touch {dig.yml,roles/dig/tasks/main.yml,roles/git/template/dig.desktop.j2,roles/dig/vars/main.yml}
git add -A
git commit -m "ansible framework for The Dig"
git push
~~~

## Expected Results
With this section, we've created a new branch on GitHub to follow our progress and we've generated an empty framework for our game.  In the next steps, we will fill the framework with variables and instructions to install the game.


# 
in the smoke project, create a new role for your game.

#### Example

~~~bash
mkdir -p roles/dig/vars
mkdir -p roles/dig/templates
mkdir -p roles/dig/tasks
~~~

## vars
Create a text file called main.yml in the vars directory.    

### The Installer
1. The file name for the installer
2. The sha1sum of the installer
3. Does this game need to be converted to lowercase? (default is no)
4. What type of install will be done (options are: innosetup, mojosetup, native)

#### Example

~~~yaml
installer: {
  path: "{{ home }}/the_dig_en_gog_2_20100.sh"
  sha1sum:
  convert_filename_lowercase: False
  type: mojosetup
  }
~~~

###  Base directory
For ScummVM games, this is usually a directory with a short name of the game in a dedicated .scummvm directory.

#### Example

~~~yaml
base_dir: "{{ home }}/.scummvm/dig
~~~

### Directories

Along with the games files, Ansible also need a separate list of directories that it needs to create.  You don't need to specify each parent directory in a different list item, Ansible will create each parent directory to the child.

#### Example

~~~yaml
directories:
  - "{{ base_dir }}/VIDEO"
~~~

### Install Record

This is a temporary fix I put in place to identify when a game has been installed.  Ansible will create this file when it installs the game and look for it to avoid extracting the file again should you run the playbook.

#### Example

~~~yaml
install_record: "{{ smoke_config_dir }}/dig"
~~~

### Game Files

The list of required game files are listed on the ScummVM Wiki page for the game.  It's worth manually extracting the game file to find the full path of the game files.  For ScummVM games, they should be placed inside the base_dir.

Folders will be moved along with their contents.

#### Example 

~~~yaml
game_files:
  - { src: "data/noarch/data/VIDEO/", dest: "{{ base_dir }}/VIDEO/" } 
  - { src: "data/noarch/data/DIG.LA0", dest: "{{ base_dir }}/DIG.LA0" }
  - { src: "data/noarch/data/DIG.LA1", dest: "{{ base_dir }}/DIG.LA1" }
  - { src: "data/noarch/data/DIGMUSIC.BIN", dest: "{{ base_dir }}/DIGMUSIC.BIN" }
  - { src: "data/noarch/data/DIGVOICE.BUN", dest: "{{ base_dir }}/DIGVOICE.BUN" }
  - { src: "data/noarch/support/icon.png", dest: "{{ icon_dir }}/dig.png" }
~~~

## Templates
Create a desktop template for your games

### INSERT SAMPLE DESKTOP FILE HERE

## Tasks
Create a text file called main.yml in the tasks directory.

For a ScummVM game, the main.yml file should look like this:

~~~yaml
---
# The Dig role task
# This collection of tasks will install and configure The Dig
# to run with the open-source game engine ScummVM.


- name: Install ScummVM
  ansible.builtin.import_role:
      name: scummvm

- name: Installing...
  ansible.builtin.include_role:
      name: install

- name: Insert The Dig game to scummvm
  ansible.builtin.blockinfile:
    path: "{{ home }}/.config/scummvm/scummvm.ini"
    block: |
        [atlantis]
        platform=pc
        gameid=atlantis
        description=Indiana Jones and the Fate of Atlantis (CD/DOS/English)
        language=en
        extra=CD
        path={{ base_dir }}
        enable_enhancements=true
        engineid=scumm
        guioptions=gameOption2 lang_English
    state: present
    marker: "# {mark} ATLANTIS BLOCK INSERTED BY SMOKE"

- name: Create Desktop Entry
  ansible.builtin.template:
      src: dig.desktop.j2
      dest: "{{ app_dir }}/dig.desktop"
