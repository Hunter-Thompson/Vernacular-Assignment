FROM ubuntu:16.04

RUN apt update && apt install telnet curl ffmpeg -y

CMD ["/bin/bash"]