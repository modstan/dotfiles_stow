# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Load Antigen
source ~/dotfiles/antigen/.antigen/repos/antigen/bin/antigen.zsh

# Ensure editor is set
export EDITOR=vim
[[ $TMUX = "" ]] && export TERM="xterm-256color" || export TERM="tmux-256color"
export PATH="/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/sbin/:$HOME/bin:/opt/android-sdk/platform-tools:/usr/lib/jvm/default/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:$HOME/.cargo/bin:$HOME/go/bin"
#ntigen bundle jdavis/zsh-files
antigen use oh-my-zsh

## Antigen Theme
antigen theme romkatv/powerlevel10k powerlevel10k
antigen bundle ssh-agent
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle rupa/z
antigen bundle docker
antigen bundle archlinux
antigen bundle tmux
antigen bundle adb
antigen bundle systemd
antigen bundle voronkovich/gitignore.plugin.zsh
antigen bundle Tarrasch/zsh-autoenv
antigen bundle wfxr/forgit
antigen bundle zsh-bat
antigen apply

#ssh-agent use dsa
zstyle :omz:plugins:ssh-agent lazy yes
zstyle :omz:plugins:ssh-agent identities id_ed25519 id_ed25519_naujas id_dsa  

ab() { adb backup -f $1.bk $1 }

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh
[ ! -f ~/dotfiles/zsh/zsh_alias ] || source ~/dotfiles/zsh/zsh_alias
[ ! -f ~/dotfiles/zsh/zsh_fzf ] || source ~/dotfiles/zsh/zsh_fzf
#autosuggestion:
[ ! -f /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh ] || source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
ZSH_AUTOSUGGEST_STRATEGY=(history completion)
#syntax highlighting
[ ! -f /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ] || source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
#git extras
[ ! -f /usr/share/doc/git-extras/git-extras-completion.zsh ] || source /usr/share/doc/git-extras/git-extras-completion.zsh

# Run tmux automatically on zsh lunch
#if [ "$TMUX" = "" ]; then tmux; fi

#unifi signing process
export AWS_FUNCTION="signer"
export AWS_PROFILE="firmware-prod"
export UBNT_BUILD_IN_PLACE=1

if type rg &> /dev/null; then
	export FZF_DEFAULT_COMMAND='rg --files'
	export FZF_DEFAULT_OPTS='-m --height 50% --border'
fi

#[ ! -f /usr/bin/starship ] || eval "$(starship init zsh)"

PATH="/home/modestas/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/home/modestas/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/modestas/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/modestas/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/modestas/perl5"; export PERL_MM_OPT;
