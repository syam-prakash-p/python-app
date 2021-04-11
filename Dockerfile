FROM alpine:3.11
RUN mkdir /application
RUN apk update && apk add python3 python3-pip
RUN pip3 install flask
COPY app.py /application/
WORKDIR /application/
CMD ["python3","app.py"]
