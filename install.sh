# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> $HOME/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

# Create all the necessary symlinks
rm -rf $HOME/.gitconfig
ln -s $HOME/.dotfiles/.gitconfig $HOME/.gitconfig

rm -rf $HOME/.zshrc
ln -s $HOME/.dotfiles/.zshrc $HOME/.zshrc

rm -rf $HOME/.wezterm.lua
ln -s $HOME/.dotfiles/.wezterm.lua $HOME/.wezterm.lua

mkdir $HOME/.config
ln -s $HOME/.dotfiles/nvim $HOME/.config/nvim

# Update Homebrew recipes
brew update

# Install all dependencies with bundle
brew bundle --file ./Brewfile
