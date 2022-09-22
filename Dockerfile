FROM python:latest

WORKDIR /app

COPY . .

RUN apt-get -y update && apt-get -y install git && git clone https://github.com/Vovka7Surnyk/DevOpsTask.git

RUN python3 parcer2.py
# CMD ["python", "./parcer2.py"]

WORKDIR /app/DevOpsTask

RUN cd /app/DevOpsTask && cp /app/nginx.csv /app/DevOpsTask

CMD ["bash", "pushtogit.sh"]