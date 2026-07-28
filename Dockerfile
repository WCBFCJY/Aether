FROM python:3.14-slim

ARG TARGETARCH

ENV PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1

WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir --no-warn-script-location -r requirements.txt

RUN pip install --no-cache-dir --no-warn-script-location uvloop

CMD ["python", "-u", "init.py"]
