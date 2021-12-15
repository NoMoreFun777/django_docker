# pull official base image
FROM python:3.9.5-slim

# set work directory
WORKDIR /usr/src/app

# set environment variables
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# install dependencies
RUN pip install --upgrade pip
RUN apt-get update \
    && apt-get -y install libpq-dev gcc \
    && pip install psycopg2
COPY requirements.txt .
COPY entrypoint.sh .
RUN pip install -r requirements.txt
RUN chmod +x entrypoint.sh


# copy project
COPY . .

# entrypoint dest
ENTRYPOINT ["/usr/src/app/entrypoint.sh"]