# Simple Linux Guide

by Daoud Magdi Makram Saeed

## Linux Distributions

- [Ubuntu](https://ubuntu.com/desktop) - I believe Ubuntu to be the most popular and most stable distribution so far due to its popularity and large User Base.
- [Manjaro](https://manjaro.org/) - Manjaro is Similar to Ubuntu in that they keep their packages stable before sending out Updates.
- [Elementry OS](https://elementary.io/) - Elementry is a Mac Inspired experience built on Ubuntu.

### Generally Installation Partitioning

##### EFI - boot or sometimes called/MBR/Windows Boot Manager
- which should be around 500MBs
- It depends on the laptop and how the Linux OS sets this up you don't have to worry about it too much there are tools for it.

##### Root - EXT4 - /
**This is the Partition that will have your system.**
 - I like to keep it separate from the Home Folder in case anything happens to your system your files are safe
 - I generally make it 50GB+ Minimum I usually keep it around 150GB sometimes because I sometimes keep virtual machines in the partition and they take space.

##### Home - EXT4 - /home
**A Partition where the User Files are.**
 - The '/home' partition is the most important. You have your files, configurations, and other scripts and control commands saved on it... 
 - There are applications that allow you to backup the Home and specific folders you choose to backup. 
 - I make the ' /home ' very Big because sometimes there are important information, applications, virtual machines, and other things that I don't want to lose.

##### SWAP - /swap
**A Partition that will be used when the RAM is full so the computer doesn’t freeze up.**
 - Swap partition allows you to keep your system stable. there is a general rule of thumb I use to decide how big it should be. I make it half the RAM size because so far the RAM has been around 4GB 8GB I always keep it half the RAM size.
 - When it gets to 32 and bigger, the Disk isn't going to handle so much processing over the long term like the RAM so I worry I will lose that disk space in the future to decay.

#####  A Mixer Partition(s)
 - This Partition is handy when you want to copy files from Linux to Windows or other Operating systems. sometimes USBs and hard drives have a hard time being FAT32 and receiving a single Large file(larger than 8GB). So I generally keep one or two Partitions FAT32 or NTFS depending on the Office I am dealing with, if it is a MAC or Windows based Office or both.

# Enviornments, Extensions, Applications,  and Configuration

## Enviornments
**Environments are the System Interface that you use Daily or for fallback.** 

### Gnome
I always choose Gnome because of its large User Base. The User Interface is similar to Mac and Windows Depending on how you configure it. If you feel Gnome isn't for you, I Recommend KDE which is also a very Popular Environment but I found it unstable at times. I feel it is inconsistent visually.

### Xfce
I usually keep Xfce as a fallback if something fails and I don't have access to my Gnome environment, I have some sort of fallback. Xfce is quick but it could be more User friendly and make it easier to work with in the long run or when you are new to Linux.

### The Terminal
Get Used to the Terminal, have a notebook or a set of notes that you update through time. I used Linux for years. I keep a list on my google search of topics and other applications or issues that I have faced so that it is quick and Easy to solve problems when they happen.

## Extensions
**I will cover Gnome Extensions only because they are far more Powerful and Popular.**

#### Install the Following application on your gnome environment.

```
sudo apt install gnome-tweaks gnome-shell-extensions gnome-shell-extension-manager -y
```

##### Click [GNOME Extensions](https://extensions.gnome.org/) to install : 
- Desktop Icons NG (DING) - Desktop Icons Extension
- Dash to Dock for COSMIC - Dock that reminds you of Mac OS
- Dash to Panel - A Windows-like Start Panel experience.
- Hide Top Bar - Allows you to get a full screen when you are focused on your Applications.
- Night Theme Switcher
- User Themes
- Unite
- GPaste - a Clipboard Extension for your Computer
- Compiz alike magic lamp effect - Mac Effect
- Caffeine - keeping the screen on if you are watching or monitoring something
- Audio Output Switcher
- Net Speed Simplified
- Simple System Monitor or Resource Monitor - to watch or monitor system information.
 
## Applicaitons

**Most of these Applications are already in the Linux installer List, so you just do:**
```
sudo apt install {application-name}
```
#### The First Few Essential Applications to learn.
- [VIM](https://github.com/dmakram/Development-Guide/tree/main/Vim-Neovim) - Vi Improved is a tool that dates back to 1988 but has been refined through time to achieve the same Text/Code Editing functionality for almost any operating system but is more popular for Linux.
- [Obsidian](https://obsidian.md/) - a very handy notetaking tool.
- [OBS Studio](https://obsproject.com/) - Screen Recorder
- [balenaEtcher](https://www.balena.io/etcher/) - Live USB Maker
- [WINE](https://www.winehq.org/) - "Wine Is Not an Emulator" Linux Windows Compatibility Layer.
- [git](https://git-scm.com/) - Global Information Tracker 
- [VLC](https://www.videolan.org/vlc/) - a free and open source cross-platform multimedia player and framework that plays most multimedia files, and various streaming protocols.
- [GIMP](https://www.gimp.org/) -  a cross-platform image editor available for GNU/Linux, macOS, Windows and more operating systems.
- [Inkscape](https://inkscape.org/) - Inkscape is professional quality vector graphics software which runs on Linux, Mac OS X and Windows desktop computers.
- [youtube-dl](https://youtube-dl.org/) - a youtube terminal downloader. 
- Gdebi - a simple deb package installer. If you are using a debian-based system.
- GSConnect or KDE Connect - a Linux transferring tool for multiplatform use.
- Synaptic Package Manager - A powerful Package Manager
- Curl - Terminal/system Downloader
- Wget - Web Get a direct Terminal Downloader

Download Your Linux/Unix Packages here. [Pkgs.org](https://pkgs.org/) 


#### [AppImages](https://appimage.org/)
**There is a newer way of installing applications, that is inspired by the Mac OS X System dmg format. Appimages are a beautifulway of keeping or managing your applications**
Here is a way to keep your Applications in one place just like Mac OS X System.
You will have to install an [AppimageLauncher](https://github.com/TheAssassin/AppImageLauncher):
```
sudo add-apt-repository ppa:appimagelauncher-team/stable
sudo apt-get update
sudo apt-get install appimagelauncher
```

Download your Appimages from here. [Appimage.github.io](https://appimage.github.io/)

### Bonus 
**For you Mac Users**
[Make your Gnome Look Like Mac Ventura](https://youtu.be/EMrNBMCaQFA)
**For you Windows Users**
[Make your Gnome Look Like Windows 11](https://youtu.be/Cy4Zo9-Tn-c)

