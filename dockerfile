FROM alpine

RUN apk add -no-cache bash

WORKDIR /shellscripts

COPY entrypoint.sh
RUN chmod +x entrypoint.sh

ENTRYPOINT [ "/app/entrypoint.sh" ]