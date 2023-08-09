FROM ubuntu

RUN apt-get update && \
    apt-get install -yq build-essential make libsqlite3-dev sqlite3

WORKDIR faceboo

COPY . .

RUN make all

EXPOSE 16000

CMD [ "bin/facebooc" ]