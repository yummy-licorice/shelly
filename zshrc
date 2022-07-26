# Prompt
autoload -Uz add-zsh-hook
_shelly_prompt() {
	PROMPT=$("$HOME/nicy/nicy")
}
add-zsh-hook precmd _shelly_prompt
# PATH
path() {
  for dir in "$@"
  do
    export PATH=$PATH:$dir
  done  
}
path "$HOME/.local/bin/" "$HOME/.nimble/bin/" "$HOME/.bun/bin" #"$HOME/zig"

# Aliases
aka() {
  alias $1="$2"
}

aka cp "cp -rvf"
aka rm "rm -rvf"
aka ls "exa --icons --color=always"
aka nf "fastfetch"
aka ff "fastfetch"
aka neofetch "fastfetch"
aka lite "devour lite-xl"
aka init-exe "degit Infinitybeond1/nim-template && nimble init"

scaff() {
  mkdir -p $1 
  cd $1 
  degit $2
}

# Syntax Highlighting
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Autocompletions
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# Bun
export BUN_INSTALL="/home/luke/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
