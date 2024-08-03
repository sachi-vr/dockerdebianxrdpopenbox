FROM debian:bookworm

RUN apt update

RUN apt-get install -y tzdata
# timezone setting
ENV TZ=Asia/Tokyo

# aptで対話形式にならないように設定
ENV DEBIAN_FRONTEND=noninteractive

RUN apt install -y xrdp openbox obconf xterm supervisor \
 && rm -rf /var/lib/apt/lists/* /var/cache/apt/*

# 適当に0番のターミナルエミュレータを選択したが駄目だった
#RUN echo 0 | update-alternatives --config x-terminal-emulator
# おそらく同じ操作をする
RUN rm /etc/alternatives/x-terminal-emulator \
 && ln -s /usr/bin/xterm /etc/alternatives/x-terminal-emulator \
 && rm /usr/bin/x-terminal-emulator \
 && ln -s /etc/alternatives/x-terminal-emulator /usr/bin/x-terminal-emulator

RUN apt update
RUN apt install -y firefox-esr wget vim \
 && rm -rf /var/lib/apt/lists/* /var/cache/apt/*

#RUN apt install -y chromium \
# && rm -rf /var/lib/apt/lists/* /var/cache/apt/*

RUN useradd -u 3101 -m -s /bin/bash sachi
RUN echo sachi:secret | chpasswd
RUN echo root:secret | chpasswd

# OpenBoxを起動するようにする
RUN echo openbox-session >> /root/.xsession
RUN echo openbox-session >> /home/sachi/.xsession

# supervisordの設定
COPY supervisord.conf /etc/supervisord.conf

# 実行
CMD [ "supervisord" ]
