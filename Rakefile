def step(description)
	description = "-- #{description} "
	description = description.ljust(80, '-')
	puts
	puts "\e[32m#{description}\e[0m"
end

def install_github_bundle(user, package)
  unless File.exist? File.expand_path("~/.vim/bundle/#{package}")
		sh "git clone https://github.com/#{user}/#{package} ~/.vim/bundle/#{package}"
	end
end
	
# VIM Bundles
BUNDLES = {
	"wincent" => "Command-T",
	"junegunn" => "fzf",
	"yegappan" => "mru",
	"scrooloose" => "nerdtree",
	"ervandew" => "supertab"
}

desc 'Install these config files.'
task :install do
	step "Installing bundles"
	BUNDLES.each do |name, repo|
		puts "cloning: "+name+"/"+repo
		install_github_bundle name, repo
	end
end

task :default => :install
