FROM httpd:2.4.57-alpine

RUN useradd -m -U -u 1000 user01

USER user01

WORKDIR /home/user01

CMD ["/bin/sh", "-c", "while:; do sleep 10 ; done"]
