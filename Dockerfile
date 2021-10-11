FROM python:2.7
LABEL maintainer="Aptha Gowda"

WORKDIR /app

COPY . /app

RUN pip install -r techtrends/requirements.txt

RUN python techtrends/init_db.py

EXPOSE 3111

CMD [ "python", "techtrends/app.py" ]