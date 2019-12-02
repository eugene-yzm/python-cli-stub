FROM python:alpine3.10

ENV PYTHONUNBUFFERED 1

WORKDIR /app

COPY * /app/

RUN pip3 install -r requirements.txt

# cmd vs entrypoint
# https://devopscube.com/run-scripts-docker-arguments/
ENTRYPOINT [ "python3" , "main.py"]

