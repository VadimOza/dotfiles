install:
  sh stow.sh
uninstall:
  sh stow.sh -D

install-lazy:
  git clone https://github.com/LazyVim/starter ~/.config/nvim

uninstall-lazy:
  rm -r ~/.config/nvim
