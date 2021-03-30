FROM ubuntu:20:10

RUN apt-get update && apt-get install -y python3

RUN python3 -m pip install flask

COPY app.py /opt/

ENTRYPOINT FLASK_APP=/opt/app.py flask run --host=0.0.0.0 --port=8080