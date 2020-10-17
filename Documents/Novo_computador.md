Etapas feitas ao reinstalar o Linux Mint

* `sudo apt update`
* `sudo apt upgrade`

* Instalar vmware-tools-distrib (se for máquina virtual)
	* Tem que extrair o arquivo compactado e rodar o shell script como sudo


* Instalar por apt (ou apt-get):
	* dropbox
	* vim
	* xfce4-terminal
	* suckless-tools
	* zsh
	* git
	* ranger
	* htop
	* screenfetch
	* i3
	* qtile
	* nmtui
	* lxappearance
	* gparted
	* openssh-server
	* tldr

* Instalar de outras maneiras:
	* oh-my-zsh:
		* `sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"`
		* `git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions`
			* Adicionar a seguinte linha ao .zshrc:
				* ```plugins=(
					  git
					  compleat
					  zsh-autosuggestions
					)```
	* anaconda: 
		* https://repo.continuum.io/archive/Anaconda3-2018.12-Linux-x86_64.sh
		* `sh -c "$(curl -fsSL https://repo.continuum.io/archive/Anaconda3-2018.12-Linux-x86_64.sh)"`
		* Adicionar ao ~/.zshrc o que foi adicionado no final do ~/.bashrc
	* powerline:
		* `pip install powerline-status`
		* `wget https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf\`
		* `wget https://github.com/powerline/powerline/raw/develop/font/10-powerline-symbols.conf`
		* `mkdir .local/share/fonts`
		* `mv Desktop/PowerlineSymbols.otf ~/.local/share/fonts`
		* `fc-cache -vf ~/.local/share/fonts`
		* `mkdir .config/fontconfig`
		* `mkdir .config/fontconfig/conf.d`
		* `mv Desktop/10-powerline-symbols.conf .config/fontconfig/conf.d`
		* Adicionar após o anaconda
			* `powerline-daemon -q`
			* `. /home/karl/anaconda3/lib/python3.7/site-packages/powerline/bindings/zsh/powerline.zsh`
	* SublimeText:
		* `wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -`
		* `sudo apt-get install apt-transport-https`
		* `echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
		* `sudo apt-get update`
		* `sudo apt-get install sublime-text`
	* ProtonVPN
		* Acessar o site, baixar os config files, plataforma Linux, protocolo UDP, senão TCP se estiver lento. Para os free, tem o US.
		* `sudo apt-get install openvpn`
		* `sudo apt-get install network-manager-openvpn-gnome`
		* `sudo apt install resolvconf`
		* Ir para Account, OpenVPN/IKEv2 Username
			* Wa7ZxFYgrx3gSwqeOr07ETrY
			* mw98fuuZXN8meJ9My/Oy/FTy
		* Clicar na barra da conexão, Editar conexão, adicionar uma conexão importando uma configuração de VPN.
		* Pela linha de comando: `sudo openvpn <config.ovpn>`, colocar o username e a senha.
		* O site http://ipleak.net/ fala se a conexão está segura.
	* ssh:
		* Instalar o openssh-server
		* Para achar o seu ip, usar `ip a`, para logar de outro computador, usar `ssh user@ip`, e aceitar o ECDSA fingerprint.
	* texlive:
	    * Se há houver alguma instalação presente, remover ela completamente. Pode ser que ela esteja em `/usr/local/texlive/{ano}`
	    * Baixar `http://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz`
	    * Descompactar o arquivo com `tar -xvf install-tl-unx.tar.gz`
	    * Rodar o `./install-tl`. Melhor alterar o caminho de instalação para uma pasta com permissão de escrita.
	    * Depois de terminar, adicionar o caminho dos binários para PATH.

        * ODrive:
            1. git clone https://github.com/liberodark/ODrive
            2. sudo apt install libgconf-2-4
            3. sudo apt install npm
            4. npm install
            5. npm start


Outras coisas que podem ser feitas:

* Alterar o shell (chsh karl)
* Fazer login no firefox pra trazer as configurações
* `dconf dump /org/cinnamon/ > arquivo_backup.txt` faz backup das configurações do cinnamon. Para carregar, `dconf load /org/cinnamon/ < arquivo_backup.txt`

* Os dotfiles estão num repositório do Github. Para criar um git bare repository, e adicionar/remover os arquivos, usar:
	* tutorial em https://www.atlassian.com/git/tutorials/dotfiles
	* Rodar `git init --bare $HOME/.cfg` (no meu caso, ~/dotfiles)
	* Colocar no .bashrc ou .zshrc: `alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'`
	* Rodar `config config --local status.showUntrackedFiles no`

* Para recuperar a instalação posteriormente, precisa ter:
	1. O alias config no .bashrc/.zshrc
	2. Rodar `echo ".cfg" >> .gitignore`, ou qualquer que seja a pasta
	3. Clonar o repo: `git clone --bare <git-repo-url> $HOME/.cfg`
	4. ? Definir o alias novamente no escopo?
	5. Fazer um `config checkout`. Se der erros de arquivos já existentes, mover eles para algum lugar, e rodar novamente.
	6. Pedir novamente para não mostrar untracked. 

* Zotero
	* Fazer o login para fazer o scan
	* Instalar os addons:
		1. Better BibTex for Zotero: https://retorque.re/zotero-better-bibtex/
		2. Markdown Here
		3. ZotFile: http://zotfile.com/
		4. Zutilo Utility for Zotero: https://github.com/willsALMANJ/Zutilo

https://github.com/pyenv/pyenv#installation
chemacs,Spacemacs, doom emacs

Tarefas:

1. Revisar a ordem desses itens
2. Transformar isso num script, se possível

