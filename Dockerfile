FROM golang:1.18.2

# RUN usermod -a -G docker www-data
RUN usermod -u 1000 www-data

WORKDIR /go/src

ENV PATH="/go/bin:${PATH}"

USER www-data

CMD ["tail", "-f", "/dev/null"]
