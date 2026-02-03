FROM python:3.12-slim

WORKDIR /app

COPY app/ app/
COPY tests/ tests/

RUN pip install --no-cache-dir pytest

CMD ["python", "app/main.py"]
