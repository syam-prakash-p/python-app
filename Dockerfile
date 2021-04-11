FROM alpine:3.11
RUN mkdir /application
RUN apk update && apk add python3
RUN pip3 install flask
COPY app.py /application/
WORKDIR /application/
EXPOSE 8000
CMD ["python3","app.py"]
