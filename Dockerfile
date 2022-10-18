FROM python:3

RUN pip install django==3.2.9

COPY . .

RUN python3 manage.py migrate
EXPOSE 8001
CMD ["python3","manage.py","runserver","0.0.0.0:8001"]
