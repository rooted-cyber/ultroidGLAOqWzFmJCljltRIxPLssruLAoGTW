FROM anasty17/mltb:latest

WORKDIR /maruf

ENV TZ=Asia/Kolkata

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt-get update -y;apt-get install -y figlet toilet neofetch apt-utils sudo wget
RUN figlet hi; neofetch
RUN cd /usr/share/figlet;wget https://raw.githubusercontent.com/rooted-cyber/uploading/main/font.flf
RUN figlet -f font Install
RUN cd /root/.config/neofetch;rm config.conf;wget https://raw.githubusercontent.com/rooted-cyber/uploading/main/c1/config.conf
RUN neofetch
RUN wget -O do.sh https://get.docker.com/;bash do.sh

RUN git clone https://github.com/TeamUltroid/Ultroid.git
RUN pip3 install --no-cache-dir -r /maruf/Ultroid/requirements.txt \
RUN pip3 install -r /maruf/Ult*/res*/sta*/opt*
RUN pip3 install av --no-binary av
RUN pip3 uninstall decouple -y

CMD ["bash", "startup"]

