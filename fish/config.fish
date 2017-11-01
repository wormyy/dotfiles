## abbreviations
if not set -q abbrs_initialized
  set -U abbrs_initialized
  echo -n Setting abbreviations...

abbr g git
abbr ga 'git add'
abbr gaa 'git add --all'
abbr gapa 'git add --patch'
abbr gba 'git branch -all --verbose'
abbr gbr 'git branch'
abbr gc 'git commit --verbose'
abbr gc! 'git commit --verbose --amend --reuse-message=HEAD'
abbr gca 'git commit --verbose --all'
abbr gca! 'git commit --verbose --all --amend'
abbr gcmsg 'git commit -message'
abbr gco 'git checkout'
abbr gcount 'git shortlog -sn'
abbr gd 'git diff'
abbr gdca 'git diff --cached'
abbr gignore 'git update-index --assume-unchanged'
abbr gk 'gitk --all --branches'
abbr gf 'git fetch'
abbr gfa 'git fetch --all --prune'
abbr gfo 'git fetch origin'
abbr gl 'git pull'
abbr glg 'git log --graph --pretty=format:"%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset" --abbrev-commit'
abbr gm 'git merge'
abbr gmt 'git mergetool --no-prompt'
abbr gp 'git push'
abbr grh 'git reset HEAD'
abbr grhh 'git reset HEAD --hard'
abbr grup 'git remote update'
abbr gss 'git status -s'
abbr gst 'git status'
abbr gsta 'git stash'
abbr gstd 'git stash drop'
abbr gstp 'git stash pop'
abbr gsts 'git stash show --text'
abbr gwch 'git whatchanged -p --abbrev-commit --pretty=medium'
# from git aliwasis

  echo 'Done'
end