git reset --hard

git pull

nvim -c "PlugClean | PlugInstall | PlugUpdate | PlugUpgrade | qa"

nvim -c "CocUpdateSync | qa"

echo "---- Congradulation, you can now use nvim with the newest config ----"
