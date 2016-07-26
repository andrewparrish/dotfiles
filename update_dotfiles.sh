mkdir -p ~/.dotfile_backups
mv -f ~/.vimrc ~/.dotfile_backups/
mv -f ~/.zshrc_extras ~/.dotfile_backups/
mv -f ~/.tmux.conf ~/.dotfile_backups/
cp .tmux.conf ~/.tmux.conf
cp .vimrc ~/.vimrc
cp .zshrc_extras ~/.zshrc_extras
