FROM python:3.9-alpine3.16

COPY requerements.txt /temp/requerements.txt
COPY service /service
WORKDIR /service

EXPOSE 8000

RUN apk add postgresql-client build-base postgresql-dev

RUN pip install -r /temp/requerements.txt

RUN adduser --disabled-password service-user

USER service-user


