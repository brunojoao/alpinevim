FROM alpine:latest

RUN apk add --no-cache \
    bash \
    git \
    lua \
    nodejs \
    npm \
    lazygit \
    bottom \
    python3 \
    go \
    neovim \
    ripgrep \
    alpine-sdk \
    wget \
    unzip 

RUN mkdir -p /usr/share/fonts/truetype/

RUN git clone --depth 1 https://github.com/AstroNvim/AstroNvim ~/.config/nvim

WORKDIR /app
CMD ["tail", "-f", "/dev/null"]
