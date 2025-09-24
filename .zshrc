# defaults write .GlobalPreferences com.apple.mouse.scaling -1

alias gall='find . -type d -name .git -exec sh -c '\''cd "{}"/../ && echo "\n\033[1;36m=== $(basename ${PWD}) ===\033[0m" && git status -s'\'' \;'
alias gcaa='git commit -a --amend'
alias gl1='git log -n 10 --pretty=format:"%h%d %ad %an: %s" --date=short'
export JAVA_TOOLS_OPTIONS="-Dlog4j2.formatMsgNoLookups=true"

# export ZSH="$HOME/.oh-my-zsh"
# # See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="refined"
# plugins=(git fast-syntax-highlighting)
# [[ "$TERM_PROGRAM" != "vscode" ]] && source $ZSH/oh-my-zsh.sh

# Set up mise for runtime management
eval "$(mise activate zsh --quiet)"
#source ~/.local/share/mise/completions.zsh

# Load private configurations if the file exists
if [ -f "$HOME/.zsh_private" ]; then
  source "$HOME/.zsh_private"
fi

eval "$(starship init zsh)"
# ADA function
adaa() {
    if [ $# -eq 0 ]; then
        echo "Usage: adaa <account>"
        echo "Example: adaa PFSReportingBeta"
        return 1
    fi
    ada credentials update --account="$1" --provider=conduit --role=IibsAdminAccess-DO-NOT-DELETE --once
}
alias python3="/Users/alxclary/.local/share/mise/installs/python/3.12.4/bin/python"
