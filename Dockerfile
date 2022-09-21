FROM python:latest

WORKDIR /app

COPY . .

RUN apt-get -y update
RUN apt-get -y install git

CMD ["python", "./parcer2.py"]