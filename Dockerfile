FROM python:latest

WORKDIR /app

COPY . .

RUN apt-get -y update && apt-get -y install git
RUN git config --global user.email "vovka7surnyk@gmail.com" && git config --global user.name "Vovka"
RUN git clone https://github.com/Vovka7Surnyk/DevOpsTask.git

RUN python3 ./parcer2.py
# CMD ["python", "./parcer2.py"]

WORKDIR /app/DevOpsTask

RUN cd /app/DevOpsTask
RUN cp /app/nginx.csv /app/DevOpsTask
RUN git add *
RUN git commit -m "Add new log"

RUN git push https://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@github.com/Vovka7Surnyk/DevOpsTask.git

RUN cd ..
CMD ["python", "./parcer2.py"]