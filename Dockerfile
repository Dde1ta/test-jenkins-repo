FROM python:3.14-slim

RUN mkdir /app

WORKDIR /app

COPY requirements.txt .

RUN python3.14 -m pip install -r requirements.txt

COPY . .

CMD ["uvicorn", "--host", "0.0.0.0", "--port", "80", "main:app"]
