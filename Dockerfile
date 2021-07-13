FROM python:3.10-rc-buster

RUN groupadd --gid 999 bert && \
    useradd --system \
    --home-dir /home/bert --create-home \
    --uid 999 --gid bert bert

RUN chown -R bert:bert /home/bert

USER bert

# We need the lib, not the script, so right now we don't care about the script's
# location.
RUN pip install --no-warn-script-location flask

COPY ./lotto/lotto.py /

CMD /./lotto.py
