# directory
function directory() {
    local color="%{$fg_no_bold[blue]%}";
    # REF: https://stackoverflow.com/questions/25944006/bash-current-working-directory-with-replacing-path-to-home-folder
    local directory="${PWD/#$HOME/~}";
    local color_reset="%{$reset_color%}";
    echo "${color}[${directory}]${color_reset}";
}


# git

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_no_bold[reset_color]%}  %{$fg_no_bold[green]%} %{$fg_no_bold[cyan]%}";
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} ";
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg_no_bold[red]%} 🔥";
ZSH_THEME_GIT_PROMPT_CLEAN="";

# ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_no_bold[blue]%} %{$fg_no_bold[blue]%}(%{$fg_no_bold[green]%}";
# ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} ";
# ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg_no_bold[blue]%})%{$fg_no_bold[red]%} 🔥";
# ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg_no_bold[white]%})";

function update_git_status() {
    GIT_STATUS=$(git_prompt_info);
}

function git_status() {
    echo "${GIT_STATUS}"
}

# command execute after
# REF: http://zsh.sourceforge.net/Doc/Release/Functions.html
precmd() {
    # last_cmd
    local last_cmd_return_code=$?;
    local last_cmd_result=true;
    if [ "$last_cmd_return_code" = "0" ];
    then
        last_cmd_result=true;
    else
        last_cmd_result=false;
    fi

    # update_git_status
    update_git_status;
}


# set option
setopt PROMPT_SUBST;


# timer
#REF: https://stackoverflow.com/questions/26526175/zsh-menu-completion-causes-problems-after-zle-reset-prompt
TMOUT=1;
TRAPALRM() {
    # $(git_prompt_info) cost too much time which will raise stutters when inputting. so we need to disable it in this occurence.
    # if [ "$WIDGET" != "expand-or-complete" ] && [ "$WIDGET" != "self-insert" ] && [ "$WIDGET" != "backward-delete-char" ]; then
    # black list will not enum it completely. even some pipe broken will appear.
    # so we just put a white list here.
    if [ "$WIDGET" = "" ] || [ "$WIDGET" = "accept-line" ] ; then
        zle reset-prompt;
    fi
}

function user(){
        echo "%{$fg_no_bold[green]%}$USER@$HOST:%{$fg_no_bold[white]%}$ "
 }

# prompt
PROMPT='$(directory) $(git_status)
$(user)';
