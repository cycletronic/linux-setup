sudo apt-get install curl git vim tmux blender exuberant-ctags

ssh-keygen -q

cd ~
mkdir -p .vim/bundle
mkdir -p .vim/autoload
curl -Sso ~/.vim/autoload/pathogen.vim https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim

cd ~/.vim/bundle
git clone git://github.com/altercation/vim-colors-solarized.git
git clone git://github.com/vim-scripts/taglist.vim.git

cd ~
git clone git://github.com/sigurdga/gnome-terminal-colors-solarized.git
cd gnome-terminal-colors-solarized
./solarize
./solarize

cd ~
