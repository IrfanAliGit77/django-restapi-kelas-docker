FROM python:3.7-alpine

ENV PYTHONUNBUFFERED 1

WORKDIR /app

COPY . .

COPY ./requirements.txt /requirements.txt

RUN pip install -r /requirements.txt

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]

EXPOSE 8000