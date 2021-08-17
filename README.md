﻿# oh my posh powershell developer config and theme

#Microsoft Store

Install Windows Terminal in Microsoft Store

 [Windows Terminal in Microsoft Store](https://www.microsoft.com/en-us/p/windows-terminal/9n0dx20hk701?activetab=pivot:overviewtab)

# Winget Install setup

 https://github.com/microsoft/winget-cli/releases/download/v1.0.11692/Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.msixbundle

# Winget in Windows Terminal

    winget install Windows Terminal

#Powershell 
 
    Install Powershell7 or using default  Powershell

#PowerShell7 install 

    [Powershell7](https://github.com/PowerShell/PowerShell/releases)

#Powershell Run as Administrator

open your PowerShell as Administrator and run the following command

  * Set-ExecutionPolicy Unrestricted

#Open Normal Powershell Installing OhMyPosh

Using PowerShell, install Posh-Git and Oh-My-Posh:
  
  * Install-Module posh-git -Scope CurrentUser

  * Install-Module oh-my-posh -Scope CurrentUser
  
  * Install-Module -Name PSReadLine -Scope CurrentUser -Force -SkipPublisherCheck  

# Installing module for icons  in PowerShell
  
  To install the module from the PowerShell Gallery:
  
  * Install-Module -Name Terminal-Icons -Repository PSGallery

# Installing and Configuring Fonts
  
  FiraCode Nerd Font
  
  You can install it with double click

  Now, to set the fonts in terminal:

  In that configuration file oyu have to add configuration for you default profile or specifically for your 
  powershell 7 or Default PowerShell

#Oh My God Theme

![Oh My God Theme](images/OhMyGod.png)






