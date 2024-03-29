# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case, to know which specific one was loaded, run: echo $RANDOM_THEME See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="robbyrussell"
#ZSH_THEME="tjkirch"
# ZSH_THEME="passion"
ZSH_THEME="QM"
#❱❱❱
# ZSH_THEME="powerlevel10k/powerlevel10k"
# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    # git
    zsh-autosuggestions
    # zsh-syntax-highlighting
)
# plugins=(zsh-autosuggestions)
# plugins=(zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias emconf="cd ~/.doom.d"
alias i3conf="cd ~/.config/i3"
alias alaconf="nvim ~/.config/alacritty/alacritty.yml"
alias kittyconf="nvim ~/.config/kitty/kitty.conf"
alias polyconf="cd ~/.config/polybar"
alias cls="clear"
alias q="exit"
alias browsing_packages="pacman -Qq | fzf --preview 'pacman -Qil {}' --layout=reverse --bind 'enter:execute(pacman -Qil {} | less)'"
alias log_out="pkill -KILL -u $USER"
alias bspconf="cd ~/.config/bspwm"
alias sxconf="cd ~/.config/sxhkd"
alias tmux="env TERM=xterm-256color tmux"
alias picomconf="cd ~/.config/picom"
alias clock="tty-clock -sc -f %d-%m-20%y"
alias tree="lsd --tree"
alias ls="lsd"
alias l="lsd -l"
alias la="lsd -A"
alias lla="lsd -la"
alias updates="sh ~/update-config.sh"
alias doom="~/.emacs.d/bin/doom"
alias nvconf="cd ~/.config/nvim"
# alias neofetch="clear && neofetch --ascii_distro ubuntu"
alias neofetch="clear && neofetch"
alias lolban="figlet -c -f ~/Desktop/figlet-fonts/3d.flf"
#alias vim="TERM=xterm-kitty vim"
alias nv="nvim -u ~/.vimrc"

# Cloudflare
alias warp="sudo systemctl start warp-svc"
alias unwarp="sudo systemctl stop warp-svc"
alias warp-cn="warp-cli connect"
alias warp-dcn="warp-cli disconnect"
alias warp-tus="warp-cli status"

alias py_p="cd ~/Desktop/code/python"
alias c_p="cd ~/Desktop/code/c"
alias cpp_p="cd ~/Desktop/code/cpp"
alias java_p="cd ~/Desktop/code/java"
alias rust_p="cd ~/Desktop/code/rust"
alias fe_p="cd ~/Desktop/code/front_end"
alias js_p="cd ~/Desktop/code/javascript"
alias sh_p="cd ~/Desktop/code/shellscript"
alias memcheck="valgrind --leak-check=full --show-leak-kinds=all"

alias de="cd ~/Desktop"
alias enw='emacs -nw'
#alias neovide="neovide --multigrid"
alias getPacmanPkg="pacman -Qet | awk '{print $1}' >"

export VISUAL=nvim;
export EDITOR=nvim;

# if [[ ! -d ~/.zsh-autopair ]]; then
#   git clone https://github.com/hlissner/zsh-autopair ~/.zsh-autopair
# fi

# source ~/.zsh-autopair/autopair.zsh
# autopair-init

# figlet -c -f ~/Desktop/figlet-fonts/3d.flf $USER | lolcat


#find . | fzf
# export FZF_DEFAULT_COMMAND='find .'
# export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -g ""'
# export FZF_DEFAULT_COMMAND='rg --hidden -l ""'
# export FZF_DEFAULT_COMMAND="find -L"
# fzf ctrl-r and alt-c behavior
export FZF_DEFAULT_OPTS='--color=bg+:#302D41,bg:#1E1E2E,spinner:#F8BD96,hl:#F28FAD --color=fg:#D9E0EE,header:#F28FAD,info:#DDB6F2,pointer:#F8BD96 --color=marker:#F8BD96,fg+:#F2CDCD,prompt:#DDB6F2,hl+:#F28FAD'
export FZF_DEFAULT_COMMAND='find * .'


# export FFF_HIDDEN=1

# link cac khoa hoc
# https://huydeveloper.glitch.me/?fbclid=IwAR3MeBjWzZG9QMGNvQ5gDSfuyPg9CUloD-5HkOJkP9CGMOnImKB7XiEodYI

# https://github.com/luong-komorebi/Awesome-Linux-Software

# https://github.com/elken/doom
# https://www.geeksforgeeks.org/dynamically-growing-array-in-c/

# .zshrc
#sudo npm install --global pure-prompt
# autoload -U promptinit; promptinit
# prompt pure
