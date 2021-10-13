FROM python:2.7
LABEL maintainer="Aptha Gowda"

WORKDIR /app

COPY techtrends /app

RUN python2.7 -m pip install --upgrade pip \ 
&&python2.7 -m pip install -r requirements.txt

RUN python init_db.py

EXPOSE 3111

CMD [ "python2.7", "app.py" ]
