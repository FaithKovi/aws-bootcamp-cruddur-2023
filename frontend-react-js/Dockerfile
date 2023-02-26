FROM node:16.18

ENV PORT=3000

COPY . /frontend-react-js

WORKDIR /frontend-react-js

RUN npm install

EXPOSE ${PORT}

ADD script.sh /usr/src/script.sh

RUN ["chmod", "+x", "/usr/src/script.sh"]

CMD [ "./script.sh"]