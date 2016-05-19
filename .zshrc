
# load all files at ~/.dotfiles/zshrc.d
for f in $(find ~/.dotfiles/zshrc.d/); do
  if [ $(stat -f "%OLp" $f) -eq 755 ]; then
    source $f;
  fi
done

