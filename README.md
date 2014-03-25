vim
===

Vim config & notes, here mostly for my own convenience.

Install :

Install required debs : 
```
sudo apt-get install build-essential cmake python-dev exuberant-ctags
```
Install My Vim folder : 
```
git clone https://github.com/erbain/vim.git ~/.vim
```
Install Vundle : 
```
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
```
Link to vimrc file : 
```
ln -s ~/.vim/.vimrc ~/.vimrc
```
Start vim and run :BundleInstall

YouCompleteMe requires at least Vim 7.3.584 with python2 support, to build Vim 7.4 from source follow instructions here : https://github.com/Valloric/YouCompleteMe/wiki/Building-Vim-from-source
To build YouCompleteMe compiled lib :
```
cd ~/.vim/bundle/YouCompleteMe
./install.sh
```

Install Tern (Requires Node and npm) :
```
cd ~/.vim/bundle/tern_for_vim
npm install
```

Misc :

Current preferred font : Inconsolata-dz

```
mkdir -p ~/.fonts
cp Inconsolata-dz\ for\ Powerline.otf ~/.fonts/
fc-cache -vf ~/.fonts
```


Bash Prompt :

Add to ~.bashrc :

```
if [ -f ~/.vim/bash_devrc ]; then
  . ~/.vim/bash_devrc
fi
```
