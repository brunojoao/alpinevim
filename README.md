The font must be configured on your PC to be able to view it with icons.

1. command install font (visit https://astronvim.com/)
cd /tmp && wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/Hack.zip && unzip Hack.zip -d /usr/share/fonts/truetype/ && rm Hack.zip && fc-cache -fv

2. configure volume of your projects in docker-compose.yml

3. run:

docker exec -it alpinevim nvim

or

docker exec -it alpinevim lazygit

or

docker exec -it alpinevim bash