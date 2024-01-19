ARG VARIANT="3.19"
FROM mcr.microsoft.com/devcontainers/base:alpine-${VARIANT}

RUN echo https://downloads.1password.com/linux/alpinelinux/stable/ >> /etc/apk/repositories
RUN wget https://downloads.1password.com/linux/keys/alpinelinux/support@1password.com-61ddfc31.rsa.pub -P /etc/apk/keys
RUN apk update && apk add 1password-cli \
    fish \
    zsh \
    starship \
    chezmoi \
    tmux \
    zellij \
    neovim

# TODO: set environment (put this in bashrc someday)
ENV EDITOR=nvim