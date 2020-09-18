FROM python:stretch

COPY . /main
WORKDIR /main

RUN pip install --upgrade pip
RUN pip install requirements.txt -r

ENTRYPOINT ["gunicorn", "-b", ":8080", "main:APP"]