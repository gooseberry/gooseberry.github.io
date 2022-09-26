---
title: "Adding a new game"
permalink: /docs/support/adding-game/
toc: false
toc_label: " On this page"
toc_icon: "file-alt"
---

How do I create an installer for a game?

Note: The guide on this page walks you through the process of creating an installer for [The Dig <i class="fas fa-external-link-alt"></i>](https://www.gog.com/game/the_dig) using the [ScummVM <i class="fas fa-external-link-alt"></i>](https://scummvm.org).
{: .notice--info}

# Information collection

The process of creating a game install script is manual and requires some digging around to get all the information required.  Before you can start to write the instructions for installing the game, you will need the following:

1. The installer from gog.com (either Windows or Linux)
2. Access to the [ScummVM Supported Games Wiki](https://wiki.scummvm.org/index.php?title=Category:Supported_Games)
3. The [ScummVM Compatibilty List](https://www.scummvm.org/compatibility/2.6.0/)

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
touch {dig.yml,roles/dig/tasks/main.yml,roles/git/templates/dig.desktop.j2,roles/dig/vars/main.yml}
git add -A
git commit -m "ansible framework for The Dig"
git push
~~~

I recommend you use the ScummVM "Game Short Name" for your role to remain consistent with that platform.  Lookup the game in the [ScummVM Compatibilty Chart](https://www.scummvm.org/compatibility/2.6.0/)

## Expected Results
With this section, we've created a new branch on GitHub to follow our progress and we've generated an empty framework for our game.  In the next steps, we will fill the framework with variables and instructions to install the game.


# Basic Game Information
Now that we have a framework in place, we need to start populating the files with content to tell Ansible what it is exactly we want to happen to get this game running.

## The Game Playbook
The playbook is a blueprint for Ansible.  It identifies the systems we want to work on and what tasks we want it to do.

### Playbook for The Dig
In the previous step, we created an empty playbook file, *dig.yml*.  Let's open up this file with an editor and give it instructions to apply the role **dig** to our computer.  

1. Enter three dashes `---` to signal the start of a document.
2. Enter a descriptive comment.  Lines that start with # are treated as comments and not processed by Ansible.
3. Provide a name for the playbook, usually the name of the game to install.
4. Identify the hosts to configure with this playbook.
5. List the roles you want to give these hosts.

The file should look like the following.

~~~yaml
---
# Install The Dig
- name: The Dig
  hosts: all
  roles:
    - dig
~~~

**TIP** - Commit the changes to git after each step.  This makes it easier to track the work you are doing and troubleshoot if you run into problems along the way.
{: .notice--success}

## Variables File
Specific information about each game is stored in a a variables files `vars/main.yml` within the game's specific role.  For instance, the variables file for **The Dig** is `/roles/dig/vars/main.yml`.  Open this file with the editor of your choice and we'll fill each section.

### Installer
The installer variable holds information about the install file.

1. Paste the following lines in the file.

~~~yaml
{% raw %}# Variables for The Dig

# installer
# parameters:
#   - path:         Required    full path to the install file.
#   - sha1sum:      Optional    not used. planned to check file integrity in future
#   - convert_filename_lowercase: Required  set to true if filenames need to be
#                                           converted to lowercase.
#   - type:         Required    acceptable values: mojosetup, innosetup
installer: { 
    path: "{{ home }}/the_dig_en_gog_2_20100.sh",
    convert_filename_lowercase: False,
    type: mojosetup
    }{% endraw %}
~~~

2. Change the path to match your file.  The "{{ home }}" portion should not change, this is where your *Linux Files* are.
3. convert_filename_lowercase does not need to be changed for ScummVM games.
4. For Linux installers, set  `type: mojosetup`, for Windows installers, `type: innosetup`.

### Game Base Directory
This variable is simply a place holder for other variables.  It helps to prevent mistakes and it keeps the configuration cleaner.

1. Paste the following lines at the end of the file.

~~~yaml
{% raw %}# Game base directory
# format:
#   base_dir: /full/path/to/where/game/files/should/be/installed
base_dir: "{{ home }}/.scummvm/dig"{% endraw %}
~~~

2. Change the last part of the path to match the *ScummVM Game Short Name*.


### Directories
This is a list of directories that will be created on your system for the game files.

1. Paste the following lines at the end of the file.

~~~yaml
{% raw %}# List of directories that need to be created on the system.
# The builtin.copy module will not create directories.  You must list
# all destination directories here.
# format:
#   directories:
#       - /first/path
#       - /second/path
directories:
    - "{{ base_dir }}/VIDEO"{% endraw %}
~~~

2. It's important here to lookup the files required from the [ScummVM Wiki](https://wiki.scummvm.org/index.php?title=Category:Supported_Games) to see if there are any additional folders that need to be created.

Ansible tasks cannot move files into a folder unless it is first created.  Thus, if you miss some folders in this part of the configuration, your installation will fail.
{: .notice--warning}


### Install Record
This is an indicator for Ansible to check if the game was already installed on your system.  To remain idempotent, Smoke will not extract the files from the [GOG.com](https://gog.com) installer if this file is present.

1. Paste the following lines at the end of the file.

~~~yaml
{% raw %}# Install record
# If this file exists, the installer will skip extracting the game content
install_record: "{{ smoke_config_dir }}/dig"{% endraw %}
~~~

2. Change the name of the file to match the *ScummVM Short Game Name*.  It is important that each game in Smoke has a unique filename here.

### Game Files

The list of required game files are listed on the ScummVM Wiki page for the game.  It's worth manually extracting the game file to find the full path of the game files.  For ScummVM games, they should be placed inside the base_dir.

Folders will be moved along with their contents.

1 . Paste the following lines at the end of the file. 

~~~yaml
{% raw %}# Game files list with source and destination
# Note {{ tmp_dir.path }} must be prefixed to the src location
game_files:
  - { src: "data/noarch/data/VIDEO/", dest: "{{ base_dir }}/VIDEO/" } 
  - { src: "data/noarch/data/DIG.LA0", dest: "{{ base_dir }}/DIG.LA0" }
  - { src: "data/noarch/data/DIG.LA1", dest: "{{ base_dir }}/DIG.LA1" }
  - { src: "data/noarch/data/DIGMUSIC.BIN", dest: "{{ base_dir }}/DIGMUSIC.BIN" }
  - { src: "data/noarch/data/DIGVOICE.BUN", dest: "{{ base_dir }}/DIGVOICE.BUN" }
  - { src: "data/noarch/support/icon.png", dest: "{{ icon_dir }}/dig.png" }{% endraw %}
~~~

2. Change the game files from this list to match the files from your game.

### Completed File
Once you have added all the section of the variables file, the `vars/main.yml` should look something like this.

~~~yaml
{% raw %}# Variables for the indiana jones and the fate of atlantis installer

# installer
# parameters:
#   - path:         Required    full path to the install file.
#   - sha1sum:      Optional    not used. planned to check file integrity in future
#   - convert_filename_lowercase: Required  set to true if filenames need to be
#                                           converted to lowercase.
#   - type:         Required    acceptable values: mojosetup, innosetup
installer: { 
    path: "{{ home }}/the_dig_en_gog_2_20100.sh",
    sha1sum: 340cdc763a7b28f9630b5024a793a9867357a7f2,
    convert_filename_lowercase: False,
    type: mojosetup
    }

# Game base directory
# format:
#   base_dir: /full/path/to/where/game/files/should/be/installed
base_dir: "{{ home }}/.scummvm/dig"

# List of directories that need to be created on the system.
# The builtin.copy module will not create directories.  You must list
# all destination directories here.
# format:
#   directories:
#       - /first/path
#       - /second/path
directories:
    - "{{ base_dir }}/VIDEO"

# Install record
# If this file exists, the installer will skip extracting the game content
install_record: "{{ smoke_config_dir }}/dig"

# Game files list with source and destination
# Note {{ tmp_dir.path }} must be prefixed to the src location
game_files:
  - { src: "data/noarch/data/VIDEO/", dest: "{{ base_dir }}/VIDEO/" } 
  - { src: "data/noarch/data/DIG.LA0", dest: "{{ base_dir }}/DIG.LA0" }
  - { src: "data/noarch/data/DIG.LA1", dest: "{{ base_dir }}/DIG.LA1" }
  - { src: "data/noarch/data/DIGMUSIC.BIN", dest: "{{ base_dir }}/DIGMUSIC.BIN" }
  - { src: "data/noarch/data/DIGVOICE.BUN", dest: "{{ base_dir }}/DIGVOICE.BUN" }
  - { src: "data/noarch/support/icon.png", dest: "{{ icon_dir }}/dig.png" }{% endraw %}
  ~~~

Save this file and close it.  You are now done with the variables portion of the role.

## Templates
Templates are typically configuration files that need to be placed on your system to run the game you're trying to install.  The configuration files will be modified according to the variables you set along with system information collected during the installation.  ScummVM games only have one template, the Desktop Entry to integrate the game with the ChromeOS launcher.

### Desktop Entry for The Dig
The desktop entry file is named according to the game.  

1. Open up the file `roles/dig/templates/dig.desktop.j2` with your editor of choice and paste the following lines in this file. 

~~~
{% raw %}[Desktop Entry]
Encoding=UTF-8
Value=1.0
Type=Application
Name=The Dig
Icon={{ icon_dir }}/dig.png
Path=/usr/games
Exec=scummvm dig{% endraw %}
~~~

2. Change the Name for the name of the game you are installing.  This is what will appear in the ChromeOS App Launcher.
3. Leave the `{% raw %}{{ icon_dir }}/{% endraw %}` portion of Icon, but change the file name to match the file name of the icon.
4. Change the Exec line to match the ScummVM Short Game Name.
5. Save this file and close your editor

## Tasks
Stored in `tasks/main.yml`, the tasks consists of the specific instructions for Ansible to configure your game onto your system.  Open up the file with your text editor and follow along the next sections to complete this intaller.

### Comments
Every task listing should start with a short descriptive comment explaining what you are attempting to do with this.

1. Paste the following content into your tasks file.

~~~yaml
---
# The Dig role task
# This collection of tasks will install and configure The Dig
# to run with the open-source game engine ScummVM.
~~~

2. Change the comments to reflect what game you are trying to install and how it will run.

### Install Game Engine
Not every game requires a separate entry for a game engine.  A separate role is created to handle these and we simply need to import the correct role.  This ensures that the game engine is installed and configured as we expect it to be.

1. Paste the following content at the end of the task file for ScummVM games.

~~~yaml
- name: Install ScummVM
  ansible.builtin.import_role:
      name: scummvm
~~~

### Install Game
The install process for most games follow a similar set of rules.  These have been grouped together in a role called install.  To install our game, we simply need to include that role in our task lising.

1. Paste the following content at the end of the task file.

~~~yaml
- name: Installing...
  ansible.builtin.include_role:
      name: install
~~~

### Import Game into ScummVM
With the game installed on your system, we need to configure ScummVM with the details of the game.  The following steps will 

1. Extract the game into a temporary folder using either `unzip` or `innoextract`.
2. Launch ScummVM from ChromeOS.
3. Click on **Add Game...*
4. Browse to your temporary folder and drill down into data/noarch/data then click on **Choose**.
5. Close ScummVM.
6. Launch the ChromeOS Files app.
7. Click on the *three dot* menu and enable the **Show hidden files** option.
7. Browse to **Linux Files > .config > scummvm**
8. Open the **scummvm.ini** file with a text editor.
9. The specific game configuration will be appended at the end of this file.  It will look something like this

~~~bash
[dig]
gameid=dig
description=The Dig
path=/home/smoke/tmp/data/noarch/data
engineid=scumm
guioptions=sndNoMIDI 
~~~

10. Add the following lines to the `tasks/main.yml`

~~~yaml
{% raw %}- name: Insert The Dig game to scummvm
  ansible.builtin.blockinfile:
    path: "{{ home }}/.config/scummvm/scummvm.ini"
    block: |
        [dig]
        gameid=dig
        description=The Dig
        path={{ base_dir }}
        engineid=scumm
        guioptions=sndNoMIDI
    state: present
    marker: "# {mark} DIG BLOCK INSERTED BY SMOKE"{% endraw %}
~~~

11. Set the name to match you game.
12. Replace the configuration between `block: |` and `state: present` with the lines from the scummvm.ini above.
13. Change the path in the config to `{% raw %}path={{ base_dir }}{% endraw %}`
14. Modify the marker line with your game name.

### Desktop Entry
Deploy the desktop entry file to the ChromeOS launcher.

1. Paste the following lines to the end of the `tasks/main.yml`

~~~yaml
{% raw %}- name: Create Desktop Entry
  ansible.builtin.template:
      src: dig.desktop.j2
      dest: "{{ app_dir }}/dig.desktop"{% endraw %}
~~~

2. Modify the *src* line to match the template file in your role.
3. Modify the *dest* line to match your game name.

### Completed file
After you have completed this section, your `tasks/main.yml` file should resemble the following.

~~~yaml
---
{% raw %}# The Dig role task
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
        [dig]
        gameid=dig
        description=The Dig
        path={{ base_dir }}
        engineid=scumm
        guioptions=sndNoMIDI
    state: present
    marker: "# {mark} DIG BLOCK INSERTED BY SMOKE"

- name: Create Desktop Entry
  ansible.builtin.template:
      src: dig.desktop.j2
      dest: "{{ app_dir }}/dig.desktop"{% endraw %}
~~~

# Conclusion
The role you have created should be ready for testing.  Save all your files and commit the changes to git.  You should then test your installation with the setup file from GOG.com to see if it works as intended.  If you get no errors, you can submit a pull request to merge this with the main repository.