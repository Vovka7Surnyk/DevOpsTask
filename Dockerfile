FROM python:latest

WORKDIR /app

COPY . .

ENV REPO=$REPO

RUN apt-get -y update && apt-get -y install git

RUN  bash pullrep.sh && python3 parcer2.py

WORKDIR /app/DevOpsTask

RUN cd /app/DevOpsTask && cp /app/nginx.csv /app/DevOpsTask

CMD ["bash", "pushtogit.sh"]