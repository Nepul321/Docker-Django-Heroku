FROM python:3.10.2-alpine3.15

COPY requirements.txt /app/requirements.txt

RUN set -ex \
    && pip install --upgrade pip \  
    && pip install --no-cache-dir -r /app/requirements.txt

WORKDIR /app

ADD . .

# EXPOSE 8000

# CMD ["gunicorn", "--bind", ":8000", "--workers", "3", "src.wsgi:application"]

CMD gunicorn src.wsgi:application --bind 0.0.0.0:$PORT