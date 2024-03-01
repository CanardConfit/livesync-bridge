FROM denoland/deno:1.41.0

WORKDIR /livesync-bridge

VOLUME /livesync-bridge/dat

COPY . /livesync-bridge/

RUN rm -R /livesync-bridge/dat

CMD ["deno", "run", "-A", "main.ts"]