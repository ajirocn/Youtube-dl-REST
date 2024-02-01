FROM arm64v8/node:18.14
EXPOSE 80
RUN \
    apt update && \
    apt install -y git ffmpeg python && \
    wget https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp -O /usr/bin/yt-dlp && \
    chmod +x /usr/bin/yt-dlp && \
    git clone https://github.com/ajirocn/Youtube-dl-REST /Youtube-dl-REST && \
    cd /Youtube-dl-REST && \
    npm i
WORKDIR /Youtube-dl-REST
CMD npm run start
