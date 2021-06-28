FROM python:3.8.6-alpine3.12
ADD . /code
WORKDIR /code
RUN pip install -r requirements.txt
ENV REFRESH=3600
EXPOSE 5555
ENTRYPOINT python real-url-proxy-server.py -p 5555 -r $REFRESH