FROM ubuntu
EXPOSE 8080
ADD hello.sh testimage/shellcript.sh
ENTRYPOINT ["/bin/bash", "-c", hello.sh]