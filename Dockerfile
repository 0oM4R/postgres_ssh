FROM postgres:latest
COPY . /
RUN apt-get update
RUN apt-get install openssh-server -y
RUN  systemctl enable ssh 
RUN  chmod +x /start.sh
CMD ["/start.sh" ]
