FROM python:3.9-slim

WORKDIR /app

COPY requirements.txt .

RUN apt-get update -y
RUN apt-get install -y curl
RUN apt-get install -y pkg-config default-libmysqlclient-dev build-essential
RUN pip install --upgrade pip
RUN pip install mysqlclient
RUN pip install -r requirements.txt

COPY . .

EXPOSE 8000

CMD ["python", "manage.py","runserver","0.0.0.0:8000"] 
