FROM docker/compose
RUN mkdir /app /app/ocw-minecraft /mods /config
WORKDIR /app
COPY datapack/ /app/
COPY docker-compose.yaml /app/ocw-minecraft/docker-compose.yaml
COPY *.env /app/ocw-minecraft/
COPY scripts/resetWorld.sh /app/resetWorld.sh
RUN dos2unix /app/resetWorld.sh /app/resetWorld.sh
COPY config/*.toml /config/
RUN wget -P /mods https://media.forgecdn.net/files/3038/811/ftb-backups-2.1.1.6.jar
RUN wget -P /mods https://media.forgecdn.net/files/3215/383/Morpheus-1.16.5-4.2.70.jar
RUN wget -P /mods https://media.forgecdn.net/files/3245/79/jei-1.16.5-7.6.1.75.jar
ENTRYPOINT ["sh", "/app/resetWorld.sh"]
