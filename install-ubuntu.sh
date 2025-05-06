#!/usr/bin/env bash

is_root() {
  return $(id -u)
}

has_sudo() {
  local prompt

  prompt=$(sudo -nv 2>&1)
  if [ $? -eq 0 ]; then
  echo "is_sudo"
  elif echo $prompt | grep -q '^sudo:'; then
  echo "has_sudo"
  else
  echo "no_sudo"
  fi
}

# Check for sudo
HAS_SUDO=$(has_sudo)
case "$HAS_SUDO" in
has_sudo)
  echo "This script requires sudo to run"
  exit 1
  ;;
no_sudo)
  echo "Please run script as root"
  exit 1
  ;;
esac

echo "Add helix ppa"
DEBIAN_FRONTEND="noninteractive" sudo add-apt-repository ppa:maveonair/helix-editor
echo "Update repositories"
DEBIAN_FRONTEND="noninteractive" sudo apt-get update
echo "Install stow, zsh and helix"
DEBIAN_FRONTEND="noninteractive" sudo apt-get install stow zsh helix

echo "Install Oh-My-Zsh"
curl -o install.sh -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh
RUNZSH=no CHSH=no sh install.sh

echo "Install plugins"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

echo "Stow configuration"
mv ~/.zshrc ~/.zshrc.pre-stow
stow . --ignore="\.(sh|md)$"

if [ $? -ne 0 ]; then
echo "Conflicting files found, please backup then remove them"
exit
fi

echo "Change shell"
sudo chsh --shell /bin/zsh
