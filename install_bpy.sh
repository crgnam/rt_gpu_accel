#!/bin/bash

# Install appropriate python version (3.7)
sudo apt update
sudo apt install software-properties-common
echo -ne '\n' | sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt install python3.7

# Add new python version to alternatives
sudo update-alternatives --install /usr/bin/python python /usr/bin/3.7 0

# Install release of bpy (currently 2.82)
python3.7 -m pip install --upgrade pip wheel future-fstrings
python3.7 -m pip install numpy scipy
python3.7 -m pip install bpy && bpy_post_install


####################################
### Building most recent version ###
####################################
# This is not yet ready, though is desireable due to added
# features such as adaptive sampling

# # Install prerequisite pacakages:
# sudo apt-get update
# sudo apt-get install build-essential git subversion cmake libx11-dev libxxf86vm-dev libxcursor-dev libxi-dev libxrandr-dev libxinerama-dev libglew-dev

# # Download the Blender source files:
# mkdir ~/blender-git
# cd ~/blender-git
# git clone https://git.blender.org/blender.git

# # Download libraries:
# mkdir ~/blender-git/lib
# cd ~/blender-git/lib
# svn checkout https://svn.blender.org/svnroot/bf-blender/trunk/lib/linux_centos7_x86_64

# # Update:
# cd ~/blender-git/blender
# make update

# # Build Blender as a python module:
# make bpy