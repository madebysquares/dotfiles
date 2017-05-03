desc 'Install these config files.'
task :install do
  puts "creating .vimrc"
  sh "ln -fs ~/dotfiles/vim/vimrc ~/.vimrc"
  puts "setting .vim folder"
  sh "ln -fs ~/dotfiles/vim ~/.vim"
  puts "installing dein - bundle manager"
  sh "sh ~/dotfiles/installer.sh ~/.vim/bundles"
  puts "creating .tmux.conf"
  sh "ln -fs ~/dotfiles/tmux/conf ~/.tmux.conf"
end

task :default => :install
