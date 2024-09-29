FROM ubuntu:22.04

RUN useradd -m -U -u 1000 user01

USER user01

WORKDIR /home/user01

CMD ["/bin/sh", "-c", "while:; do sleep 10 ; done"]
