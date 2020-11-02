FROM ubuntu:16.04

RUN apt-get update && install -y python python-pip

RUN pip install flask

COPY wsgi.py /opt/

ENVIRONMENT FLASK_APP=/opt/app.py flask run --host=0.0.0.0 --port=8080
