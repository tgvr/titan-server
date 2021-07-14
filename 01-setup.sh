# update and upgrade existing packages
sudo apt update && 
sudo apt -y upgrade

# install essential packages
sudo apt -y install build-essential gcc g++ make binutils software-properties-common git cmake pkg-config

# install zsh, oh-my-zsh, powerlevel10k
sudo apt -y install zsh
chsh -s $(which zsh)
sudo chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
echo "Please edit ZSH_THEME=powerlevel10k/powerlevel10k in ~/.zshrc"

