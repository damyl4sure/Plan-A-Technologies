
FROM python:3
LABEL plan-a-technologies.com=challenge1

ENV PYTHONUNBUFFERED=1
ARG USER=appuser

WORKDIR /code

RUN adduser $USER

COPY requirements.txt .

RUN pip install -r requirements.txt --no-cache-dir

COPY . .

EXPOSE 8000
USER $USER

CMD ["python","manage.py","runserver","0.0.0.0:8000"]