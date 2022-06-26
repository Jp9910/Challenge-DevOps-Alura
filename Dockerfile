FROM python:3.8-alpine

ENV DJANGO_SUPERUSER_USERNAME=root
ENV DJANGO_SUPERUSER_PASSWORD=password
ENV DJANGO_SUPERUSER_EMAIL=root@aluraflix.com
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

COPY . /app

WORKDIR /app

RUN pip install --no-cache-dir -r requirements.txt

RUN python ./manage.py migrate && python ./manage.py createsuperuser --noinput

EXPOSE 8000

CMD ["python", "./manage.py", "runserver", "0.0.0.0:8000"]