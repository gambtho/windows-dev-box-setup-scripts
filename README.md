
# About this project

More Info - https://github.com/Microsoft/windows-dev-box-setup-scripts


|Click link to run  |Description  |
|---------|---------|
|<a href='http://boxstarter.org/package/url?https://raw.githubusercontent.com/gambtho/windows-dev-box-setup-scripts/master/full_stack.ps1'>Full Desktop App</a>     | Full Stack Dev (Windows and Linux Native Tools) |


**Notes:**  
 When the script finishes you will only have a root user with a blank password. You should  manually create a non-root user via `$ sudo adduser [USERNAME] sudo` with a non-blank password. Use this user going forward. For more info on WSL please refer to the [documentation](https://docs.microsoft.com/en-us/windows/wsl/about).

It's important to point out the open source edition of the Chocolatey client will not allow you to magically install software that requires administrative access, so you will need to find packages that are portable or create those and push them to the community repository or your internal sources.


# Todo 

maintain updated package list

sudo apt-get install $(awk '{print $1'} package.list)

Setup

Linux Side
-dircolors
-zsh
-vim config
-ssh umount mount
-docker
-powerline font


-terraform 
sudo echo ; zcat <( CURRR_VER=$(curl -s https://checkpoint-api.hashicorp.com/v1/check/terraform | jq -r -M '.current_version') ; curl -q "https://releases.hashicorp.com/terraform/${CURRR_VER#?}/terraform_${CURRR_VER#?}_linux_amd64.zip" ) | sudo tee /usr/local/bin/terraform > /dev/null ; sudo chmod +x /usr/local/bin/terraform


Restart-Service LxssManager
