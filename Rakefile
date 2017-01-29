desc 'Install these config files.'
task :install do
  puts "creating .vimrc"
  sh "ln -fs ~/dotfiles/vim/vimrc ~/.vimrc"
  puts "setting .vim folder"
  sh "ln -fs ~/dotfiles/vim ~/.vim"
end

task :default => :install
