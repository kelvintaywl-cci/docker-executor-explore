FROM python:3.10-slim as base

ENV PYTHONUNBUFFERED True

ENV APP_HOME /opt/app/
WORKDIR $APP_HOME
RUN pip install --upgrade pip
