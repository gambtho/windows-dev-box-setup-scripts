
# Setup Process

[More Info](https://github.com/Microsoft/windows-dev-box-setup-scripts)


|Click link to run  |Description  |
|---------|---------|
|<a href='http://boxstarter.org/package/url?https://raw.githubusercontent.com/gambtho/windows-dev-box-setup-scripts/master/full_stack.ps1'>Full Stack </a>     | Windows and Linux Native Tools |


**Notes:**  
 When the script finishes you will only have a root user with a blank password. You should  manually create a non-root user via `$ sudo adduser [USERNAME] sudo` with a non-blank password. Use this user going forward. For more info on WSL please refer to the [documentation](https://docs.microsoft.com/en-us/windows/wsl/about).
 
The  Chocolatey client will not allow you to magically install software that requires administrative access, so you will need to find packages that are portable or create those and push them to the community repository or your internal sources.

## Todo 

- maintain updated package list
- sudo apt-get install $(awk '{print $1'} package.list)
-dircolors
-zsh
-vim config
-ssh umount mount
-docker
-powerline font
-terraform 

## Random command
Restart-Service LxssManager
