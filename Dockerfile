FROM python:3.10-slim as base

# Allow statements and log messages to immediately appear in the Knative logs
ENV PYTHONUNBUFFERED True

# Copy local code to the container image.
ENV APP_HOME /opt/app/
WORKDIR $APP_HOME
RUN pip install --upgrade pip
