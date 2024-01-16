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

## Install jq JSON Parser
```
brew install jq
```

## Make all `.sh` files executable
```
chmod +x ~/.config/sketchybar/plugins/*
chmod +x ~/.config/sketchybar/items/*
```
## Start service
```
brew services start sketchybar
```

## Restart service
```
sketchybar --reload
```
