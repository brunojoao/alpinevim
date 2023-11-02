FROM alpine:latest

# Instale as dependências necessárias
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
    unzip \
    fontconfig

# Crie o diretório de fontes se não existir
RUN mkdir -p /usr/share/fonts/truetype/

# Baixe e extraia a fonte Nerd Font
RUN wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/Hack.zip && \
    unzip Hack.zip -d /usr/share/fonts/truetype/ && \
    rm Hack.zip && \
    fc-cache -fv

# Clone o AstroNvim
RUN git clone --depth 1 https://github.com/AstroNvim/AstroNvim ~/.config/nvim

WORKDIR /app
CMD ["tail", "-f", "/dev/null"]
