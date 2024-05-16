FROM ubuntu
RUN apt update -y && apt upgrade -y && apt install -y openssh-server
COPY ./entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]
EXPOSE 22
