echo "Uninstalling Smart Up Arrow..."

if [[ $SHELL == *"zsh"* ]]; then
  sed -i '/up-line-or-beginning-search/d' ~/.zshrc
  sed -i '/down-line-or-beginning-search/d' ~/.zshrc
  sed -i '/bindkey/d' ~/.zshrc
else
  sed -i '/history-search-backward/d' ~/.inputrc
  sed -i '/history-search-forward/d' ~/.inputrc
fi

echo "✅ Uninstalled. Restart your terminal."
