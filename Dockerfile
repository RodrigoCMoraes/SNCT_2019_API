FROM tiangolo/uvicorn-gunicorn-fastapi:python3.7

RUN pip install pipenv

COPY ./app/config /app/config
WORKDIR /app/config
RUN pipenv install --system --ignore-pipfile --verbose

VOLUME ./app /app

WORKDIR /app