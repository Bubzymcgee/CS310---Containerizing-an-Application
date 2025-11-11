FROM python

RUN mkdir /srv/app
WORKDIR /srv/app

COPY ./hello.py .

RUN pip install flask

ENV FLASK_APP=hello.py

EXPOSE 5000

CMD ["flask", "run", "--host=0.0.0.0"]