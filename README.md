# rt_gpu_accel
This is a quick demonstration of how Blender can be used, when compiled as a python module, as a method for achieving hardware accelerated ray tracing in GIANT.

# Installation
## Windows 10: 
1. **Install Python3.7:**  You must first ensure that you have `python3.7` installed on your machine.  To do so, follow this steps:
    - Download the [python 3.7 Windows x86-64 executable installer](https://www.python.org/ftp/python/3.7.9/python-3.7.9-amd64.exe)
    - Start the installer, select "Add Python 3.7 to PATH", and then click "Install Now"
2. **Install Necessary Python Modules:**
    - From the command prompt, run the following:
        - `pip install --upgrade pip wheel future-fstrings`
        - `pip install numpy scipy`
3. **Quick install of bpy 2.82.1:**
    - From the command prompt, run the following:
        - `pip install bpy && bpy_post_install`


## Ubuntu:
A script has been included for installing `bpy`.  Currently, the script will install a pre-built version, `bpy-2.82.1`.  In the future, we will be building `bpy` directly from the blender source code, preferably `bpy-2.83.1-LTS` or later, as it includes many desireable features such as adaptive sampling.  For now, `bpy-2.82.1` will suffice as a proof of concept.  Simply run:

`./install_bpy.sh`

This will install `python3.7` on your system if it is not already installed, in addition to `bpy` and the other required pacakages.  **This will take awhile**.  

To use the `bpy` module, you will need to use `pyhton3.7`.  If you'd like to set it as your default, you can simply use:

`sudo update-alternatives --config python`

and select `python3.7` from the list.  **But this is not necessary.**

# Demo
If `python3.7` is your default python version, you can simply run:

`python demo.py`

If not, you must run:

`python3.7 demo.py`