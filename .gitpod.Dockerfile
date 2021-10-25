FROM gitpod/workspace-full

USER gitpod

RUN git clone https://gitlab.com/andtech/dotfiles ~/dotfiles
