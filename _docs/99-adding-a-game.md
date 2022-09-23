---
title: "Adding a new game"
permalink: /docs/how-it-works/adding-game//
toc: false
toc_label: " On this page"
toc_icon: "file-alt"
---

To add a new game.  This tutorial will use a ScummVM game.

# Information collection

You will need the following information
1. The installer from gog.com (either Windows or Linux)
2. Access to the [ScummVM Supported Games Wiki](https://wiki.scummvm.org/index.php?title=Category:Supported_Games)

# Variables
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
