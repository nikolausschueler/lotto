FROM python:3.10-rc-alpine

RUN addgroup -S bert && \
    adduser --system \
    --home /home/bert \
    --ingroup bert bert

USER bert

# We need the lib, not the script, so right now we don't care about the script's
# location.
RUN pip install --no-warn-script-location flask

COPY ./lotto /lotto

CMD ./lotto/lotto.py
