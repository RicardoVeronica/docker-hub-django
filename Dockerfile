FROM python:3

ENV PYTHONUNBUFFERED=1 \
    PYTHONDONTWRITEBYTECODE=1

WORKDIR /code

COPY requirements.txt /code/

RUN python -m pip --no-cache-dir install -r requirements.txt

COPY . /code/
