The folder included bash environment aliases implementation for a faster and reliable bash.

The .bashrc file is a config file that needs to be moved to home directory under ``/home/user/.bashrc``. This bash rc file implements new aliases like bye for exiting bash and sai for ``sudo apt install`` used for packages. 

The alias.sh is script after moving .bashrc to home directy to backup old .bashrc file and symbollically linking the .bashrc in the dotfiles repository to the one in your homedirectory. This makes sure any changes done to .bashrc done in repository will get automatically updated.  

This is useful for version control and sharing in this dotfiles repository. 

1. Alias Script Citations and Resources
   * [Symbolically Link Tutorial](https://phoenixnap.com/kb/symbolic-link-linux) 
