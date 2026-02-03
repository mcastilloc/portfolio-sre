FROM python:3.12-slim

WORKDIR /app

ENV PYTHONPATH=/app

COPY app/ app/
COPY tests/ tests/

RUN pip install --no-cache-dir pytest

CMD ["pytest"]
