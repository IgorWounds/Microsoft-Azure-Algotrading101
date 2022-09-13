FROM python:3.8
RUN mkdir -p /code

COPY ./main.py /code/
COPY ./requirements.txt /code/

WORKDIR /code

# set environment variables
ARG API_KEY
ARG API_SECRET
ARG TRACK
ARG TRADE

ENV KRAKEN_API_KEY $API_KEY
ENV KRAKEN_API_SECRET $API_SECRET
ENV TRACK_TICKER $TRACK
ENV TRADE_TICKER $TRADE

RUN pip install -r requirements.txt
CMD ["python", "/code/main.py"]