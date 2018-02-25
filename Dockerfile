FROM ubuntu:16.04

LABEL maintainer tomwillfixit

# Update and install shellinabox
RUN apt-get update && apt-get install wget shellinabox -y

COPY . /opt/slide

EXPOSE 8080

WORKDIR /opt/slide

# Start Shellinabox
ENTRYPOINT /usr/bin/shellinaboxd -t -p 8080 --no-beep -s '/demo/:root:root:/:/opt/slide/entrypoint.sh'

