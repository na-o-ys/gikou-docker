FROM ubuntu:14.04
RUN apt-get update && apt-get install -y g++ make curl unzip
WORKDIR /app
RUN curl -L https://github.com/gikou-official/Gikou/archive/v1.0.1.zip -O && \
    unzip v1.0.1.zip && rm v1.0.1.zip && \
    mv Gikou-1.0.1/* . && rm -r Gikou-1.0.1 && \
    make release
RUN curl -L https://s3-ap-northeast-1.amazonaws.com/naoys.gikou.binary/binary_20160606.zip -O && \
    unzip binary_20160606.zip && rm binary_20160606.zip && \
    mv binary/* . && rm -rf binary
CMD ["./bin/release"]
