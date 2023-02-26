FROM python:3.10-slim-buster

WORKDIR /backend-flask

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY . .

ENV FLASK_ENV=development

EXPOSE ${PORT}

ADD script.sh /usr/src/script.sh

RUN ["chmod", "+x", "/usr/src/script.sh"]

CMD [ "./script.sh" ]
