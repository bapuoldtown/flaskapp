FROM python:3.8
WORKDIR /flask
COPY . .
RUN pip install -r requirements.txt
CMD ["gunicorn","--workers=1","--bind=0.0.0.0:5000","flaskapp1:app"]
