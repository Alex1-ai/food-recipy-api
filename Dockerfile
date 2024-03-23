# GETTING THE IMAGE TO BE USED BY DOCKER 
# ALPINE IS VERY LIGHT WEIGHT
FROM python:3.9-alpine3.13

# THE PERSON MAINTAINING THIS APPLICATION
LABEL maintainer="https://github.com/Alex1-ai/"


# THIS TELL PYTHON NOT TO BUFFER THE OUTPUT
# SO THAT IT PREVENT ANY DELAYS SO WE CAN SEE LOG IMMEDIATELY
ENV PYTHONUNBUFFERED 1

# COPYING ALL OUR REQUIREMENTS AND FILES FROM LOCAL TO DOCKER CONTAINER
COPY ./requirements.txt /tmp/requirements.txt
COPY ./requirements.dev.txt /tmp/requirements.dev.txt
COPY ./app /app
WORKDIR /app
EXPOSE 8000


# RUNNING COMMANDS IN PYTHON
ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /tmp/requirements.txt
COPY ./requirements.dev.txt /tmp/requirements.dev.txt
COPY ./app /app
WORKDIR /app
EXPOSE 8000

# HERE WE ARE SAYING DEV TO BE DEFAULT FALSE
# BUT WE WOULD BE OVERIDDING IT ON OUR ON DOCKER-COMPOSE 
ARG DEV=false
RUN python -m venv /py && \
    /py/bin/pip install --upgrade pip && \
    apk add --update --no-cache postgresql-client && \
    apk add --update --no-cache --virtual .tmp-build-deps \
        build-base postgresql-dev musl-dev && \
    /py/bin/pip install -r /tmp/requirements.txt && \
    if [ $DEV = "true" ]; \
        then /py/bin/pip install -r /tmp/requirements.dev.txt ; \
    fi && \
    rm -rf /tmp && \
    apk del .tmp-build-deps && \
    adduser \
        --disabled-password \
        --no-create-home \
        django-user

# UPDATING THE ENVIRONMENT OF THE DOCKER
ENV PATH="/py/bin:$PATH"

# AFTER RUNNING THE USER AS ROOT THIS USER django-user SWITCHES BACK THE USER TO django-user
USER django-user