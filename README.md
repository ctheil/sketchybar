# Setup
## Install sketchybar
```
brew tap FelixKratz/formulae
brew install sketchybar
```
## Install fonts and symbols
```
brew tap homebrew/cask-fonts
brew install font-sf-pro
brew install --cask sf-symbols
```

## Install app font
```
curl -L https://github.com/kvndrsslr/sketchybar-app-font/releases/download/v1.0.16/sketchybar-app-font.ttf -o $HOME/Library/Fonts/sketchybar-app-font.ttf
```
```
curl -L https://github.com/kvndrsslr/sketchybar-app-font/releases/download/v1.0.20/icon_map_fn.sh -o ~/.config/sketchybar/plugins/icon_map_fn.sh
```

## Make all `.sh` files executable
```
chmod +x <filePath>
```
## Start service
```
brew services start sketchybar
```

## Restart service
```
sketchybar --reload
```
