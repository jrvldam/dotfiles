zimfw() { source /Users/rodrigo/.zim/zimfw.zsh "${@}" }
zmodule() { source /Users/rodrigo/.zim/zimfw.zsh "${@}" }
fpath=(/Users/rodrigo/.zim/modules/git/functions /Users/rodrigo/.zim/modules/utility/functions /Users/rodrigo/.zim/modules/duration-info/functions /Users/rodrigo/.zim/modules/git-info/functions /Users/rodrigo/.zim/modules/prompt-pwd/functions ${fpath})
autoload -Uz -- git-alias-lookup git-branch-current git-branch-delete-interactive git-branch-remote-tracking git-dir git-ignore-add git-root git-stash-clear-interactive git-stash-recover git-submodule-move git-submodule-remove mkcd mkpw duration-info-precmd duration-info-preexec coalesce git-action git-info prompt-pwd
source /Users/rodrigo/.zim/modules/environment/init.zsh
source /Users/rodrigo/.zim/modules/git/init.zsh
source /Users/rodrigo/.zim/modules/input/init.zsh
source /Users/rodrigo/.zim/modules/termtitle/init.zsh
source /Users/rodrigo/.zim/modules/utility/init.zsh
source /Users/rodrigo/.zim/modules/duration-info/init.zsh
source /Users/rodrigo/.zim/modules/gitster/gitster.zsh-theme
source /Users/rodrigo/.zim/modules/zsh-completions/zsh-completions.plugin.zsh
source /Users/rodrigo/.zim/modules/completion/init.zsh
source /Users/rodrigo/.zim/modules/zsh-autosuggestions/zsh-autosuggestions.zsh
source /Users/rodrigo/.zim/modules/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /Users/rodrigo/.zim/modules/zsh-history-substring-search/zsh-history-substring-search.zsh
