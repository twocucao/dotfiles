# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# oh my zsh 
# export ZSH="/Users/twocucao/.oh-my-zsh"
export ZSH="$HOME/.oh-my-zsh"


ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(
	git
	rust
	rustup
	vi-mode
	autojump
	fzf
	pyenv
	osx
	docker
	zsh-autosuggestions
	zsh-syntax-highlighting
	zsh-completions
)

autoload -U compinit && compinit


ZSH_AUTOSUGGEST_USE_ASYNC=1

source $ZSH/oh-my-zsh.sh

alias zshconfig="vim ~/.zshrc"



for f in ~/Cystem/dotfiles/zsh/*; do
  source $f
done

for f in ~/Cystem/dotfiles/zsh/plugins/*; do
  source $f
done

for f in ~/Cystem/dotfiles/zsh/lang/*; do
  source $f
done

export CARGO_NET_GIT_FETCH_WITH_CLI=true


# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export LDFLAGS="-L/usr/local/opt/llvm/lib"
export CPPFLAGS="-I/usr/local/opt/llvm/include"


alias gf=gf
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

export LDFLAGS="-L/usr/local/opt/zlib/lib -L/usr/local/opt/bzip2/lib"
export CPPFLAGS="-I/usr/local/opt/zlib/include -I/usr/local/opt/bzip2/include"
