FROM ubuntu:16:04

RUN apt-get update && apt-get install -y python python-pip

RUN pip install flask

COPY hello.py /opt/

ENTRYPOINT FLASK_APP=/opt/hello.py flask_run --host=0.0.0.0 --port=8080


