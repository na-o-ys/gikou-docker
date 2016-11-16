apt-get update && apt-get install -y unzip

curl -L https://github.com/gikou-official/Gikou/archive/v1.0.1.zip -O
unzip v1.0.1.zip
rm v1.0.1.zip

cp Makefile Gikou-1.0.1/
(cd Gikou-1.0.1 && make release)
cp Gikou-1.0.1/bin/release gikou
rm -rf Gikou-1.0.1

