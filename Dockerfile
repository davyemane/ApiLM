FROM python:3.8-slim-buster 

WORKDIR /app

COPY requirements.txt requirements.txt

RUN pip3 install -r requirements.txt 
RUN pip install --upgrade pip


COPY . .


CMD ["gunicorn", "my_app.wsgi", "-b", "0.0.0.0:8000"]
