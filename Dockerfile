FROM alpine:3.4
RUN apk add --no-cache g++ make && apk add --update curl
RUN mkdir /app
WORKDIR /app
RUN curl -L https://github.com/gikou-official/Gikou/archive/v1.0.1.zip -O && \
    unzip v1.0.1.zip && rm v1.0.1.zip && \
    mv Gikou-1.0.1/* . && rm -r Gikou-1.0.1 && \
    make release
COPY . .
CMD ["./bin/release"]
