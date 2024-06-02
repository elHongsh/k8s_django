FROM python:3.12.3-bookworm

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

WORKDIR /app

COPY requirements.txt /app/

RUN pip install --no-cache-dir -r requirements.txt

COPY . /code

#RUN python manage.py migrate
#RUN python manage.py collectstatic --noinput

EXPOSE 8000
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
