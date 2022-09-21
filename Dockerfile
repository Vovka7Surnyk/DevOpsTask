FROM python:latest

WORKDIR /app

COPY . .

CMD ["python", "./parcer2.py"]