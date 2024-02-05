FROM python:3.12

RUN mkdir /webapp
WORKDIR /webapp

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1  

RUN pip install --upgrade pip  
COPY . .
RUN ls -l
RUN pip install -r requirements

EXPOSE 2023

CMD python manage.py runserver 127.0.0.1:2023