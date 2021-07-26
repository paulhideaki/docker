FROM ubuntu:20.04

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y blender wget
# COPY blender-2.93.1-linux-x64.tar.xz /tmp/
WORKDIR /tmp 
RUN wget https://ftp.nluug.nl/pub/graphics/blender/release/Blender2.93/blender-2.93.1-linux-x64.tar.xz
RUN tar -xf blender-2.93.1-linux-x64.tar.xz
RUN mv blender-2.93.1-linux-x64 /usr/share/ 
COPY asound.conf /etc/asound.conf
CMD /usr/share/blender-2.93.1-linux-x64/blender


