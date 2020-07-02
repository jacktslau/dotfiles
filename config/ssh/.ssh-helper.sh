export PATH="~/.dotfiles/ssh/bin:$PATH"

function sk() {
  ssh-add -D
  ssh-add -K ~/.ssh/local/$1/id_rsa
}
