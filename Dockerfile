FROM python:3.12

RUN mkdir /webapp
WORKDIR /webapp

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1  

RUN pip install --upgrade pip  
COPY . .
RUN ls -l

RUN pip install -r requirements

EXPOSE 3032

CMD python3 manage.py runserver 0:3032