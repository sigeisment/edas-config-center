#/bin/bash
cd `dirname $0`

img_output="deep/edas-config-center" 

docker build -t $img_output .

docker rm -f config-center &>/dev/null

docker run -d \
    -p 8080:8080 \
    -p 9600:9600 \
    --name config-center \
    $img_output \
    java \
        -Djava.security.egd=file:/dev/./urandom \
        -jar /home/edas-config-center.jar