FROM alpine/helm:3.16 as helm

RUN curl -o- https://fnm.vercel.app/install | bash && \
    fnm install 22

COPY . /usr/src/
ENTRYPOINT ["node", "/usr/src/index.js"]
