FROM theteamultroid/ultroid:main
WORKDIR /maruf

RUN apt install git -y
COPY . .
RUN git clone https://github.com/anasty17/mirror-leech-telegram-bot
RUN cd /maruf/m*t*t;pip3 install --no-cache-dir -r requirements.txt > /dev/null 2>&1
RUN cp -rf config* token* m*t*t
FROM anasty17/mltb:latest
RUN cd m*t*t;bash start.sh
