FROM python:alpine3.7

ADD ims.py /
ADD stock.txt /

CMD [ "python", "./ims.py" ]
