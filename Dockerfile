FROM alpine:3.13.6

COPY entrypoint.sh /usr/local/bin/

RUN wget https://dl.min.io/client/mc/release/linux-amd64/mc -O /usr/local/bin/mc && chmod +x -R /usr/local/bin

ENTRYPOINT ["entrypoint.sh"]