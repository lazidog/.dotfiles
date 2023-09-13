git pull origin main;

function setup() {

	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

	export PATH=/opt/homebrew/bin:$PATH

	bash ~/.dotfiles/dotfiles/brew.sh

	ln -sf ~/.dotfiles/dotfiles/.zprofile ~/.zprofile
	ln -sf ~/.dotfiles/dotfiles/.vimrc ~/.vimrc
	ln -sf ~/.dotfiles/dotfiles/.gitconfig ~/.gitconfig
	

	sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" 
	git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
	ln -sf ~/.dotfiles/dotfiles/.zshrc ~/.zshrc
	source ~/.zshrc
	ln -sf ~/.dotfiles/dotfiles/.p10k.zsh ~/.p10k.zsh
	# if use nerd font, also add to vscode setting.json "terminal.integrated.fontFamily": "MesloLGS NF"
	git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
	source ~/.zshrc

	# configDir=~/.config
	# if [ -d $configDir ]; then
	# 	echo yes | rm -rf $configDir
	# fi
	# ln -s "$PWD/config/" $configDir
	rsync -a --no-perms ./.config/ ~/.config;
}

if [ "$1" == "--force" -o "$1" == "-f" ]; then
	setup;
else
	read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1;
	echo "";
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		setup;
	fi;
fi;
unset setup;