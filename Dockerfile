FROM ubuntu
RUN apt-get update && apt-get install -y wget s3cmd

ENV DOCKERIZE_VERSION v0.3.0
RUN wget https://github.com/jwilder/dockerize/releases/download/$DOCKERIZE_VERSION/dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz \
    && tar -C /usr/local/bin -xzvf dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz \
    && rm dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz

ADD dot.s3cfg.tmpl /root/.s3cfg.tmpl
ENTRYPOINT ["dockerize", "-template", "/root/.s3cfg.tmpl:/root/.s3cfg", "s3cmd"]

WORKDIR /work
