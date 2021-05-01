FROM ubuntu:latest

RUN apt-get update && \
  apt-get install -y python3 && \
  apt-get install -y python3-pip && \
  pip3 install flask

COPY ./lotto/lotto.py /

CMD /./lotto.py
