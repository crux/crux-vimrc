*--> WIP (Work-in-progess) <--*

# My very personal opinionated vim settings

Trying to refactor my personal setting out of my .vimrc file into its own
vundle plugin.

## Install & bootstrap

All settings are no inside this vim plugin. To get off the ground for new vim setup it goes like this:

    $ mkdir -p .vim/bundle
    $ git clone git@github.com:crux/crux-vimrc.git .vim/bundle/crux-vimrc
    $ ln -s .vim/bundle/crux-vimrc/vundle.vimrc .vimrc

done. 

The vundle init setup code is found in the now soft-linked .vimrc file. From there all the plugins can be loaded. Besides external plugins, my own personal setting are in the crux-vimrc plugin itself and will be loaded from the plugin subdir.

