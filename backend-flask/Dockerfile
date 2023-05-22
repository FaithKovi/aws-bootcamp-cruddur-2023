FROM 436046654089.dkr.ecr.us-east-1.amazonaws.com/cruddur-python:3.10-slim-buster

WORKDIR /backend-flask

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY . .

EXPOSE ${PORT}

ENV PYTHONUNBUFFERED=1

ADD script.sh /usr/src/script.sh

RUN ["chmod", "+x", "/usr/src/script.sh"]

CMD [ "./script.sh" ]
