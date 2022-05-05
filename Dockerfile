FROM node:12-alpine
RUN apk --no-cache add git git-daemon
RUN npm install jest --global
WORKDIR /cpr
COPY __test__/entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
