FROM alpine

RUN apk add -no-cache python3 g++ make 

WORKDIR /shellscripts

COPY entrypoint.sh .
RUN chmod +x entrypoint.sh

ENTRYPOINT [ "/app/entrypoint.sh" ]