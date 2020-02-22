# Description: Boxstarter Script
# Author: Microsoft
# Common dev settings for full stack development using Windows and Linux native tools

Disable-UAC

# Get the base URI path from the ScriptToCall value
$bstrappackage = "-bootstrapPackage"
$helperUri = $Boxstarter['ScriptToCall']
$strpos = $helperUri.IndexOf($bstrappackage)
$helperUri = $helperUri.Substring($strpos + $bstrappackage.Length)
$helperUri = $helperUri.TrimStart("'", " ")
$helperUri = $helperUri.TrimEnd("'", " ")
$helperUri = $helperUri.Substring(0, $helperUri.LastIndexOf("/"))
$helperUri += "/scripts"
write-host "helper script base URI is $helperUri"

function executeScript {
    Param ([string]$script)
    write-host "executing $helperUri/$script ..."
	iex ((new-object net.webclient).DownloadString("$helperUri/$script"))
}

#--- Setting up Windows ---
executeScript "SystemConfiguration.ps1";
executeScript "FileExplorerSettings.ps1";
executeScript "RemoveDefaultApps.ps1";
executeScript "CommonDevTools.ps1";
executeScript "HyperV.ps1";
RefreshEnv

executeScript "Docker.ps1";
RefreshEnv

executeScript "Browsers.ps1";
RefreshEnv

executeScript "WSL.ps1";
RefreshEnv

executeScript "Personal.ps1";
RefreshEnv


write-host "Installing tools inside the WSL distro..."
# Ubuntu1804 apt-transport-https lsb-release ca-certificates build-essential curl wget unzip zip tmux git gcc g++ make nodejs -y
# Ubuntu1804 run apt install python2.7 python3 -y 
# Ubuntu1804 yarn docker-ce fonts-powerline ttf-mscorefonts-installer openjdk-11-jre-headless neovim zsh screenfetch python-pyqt5 msttcorefonts -y

write-host "Finished installing tools inside the WSL distro"

Enable-UAC
Enable-MicrosoftUpdate
Install-WindowsUpdate -acceptEula
