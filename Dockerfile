
FROM python:stretch

COPY . /app
WORKDIR /app

RUN pip install pip==20.2.3
RUN pip install -r requirements.txt

ENTRYPOINT ["gunicorn", "-b", ":8080", "main:APP"] 
