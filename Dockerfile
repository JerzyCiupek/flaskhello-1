FROM python:3.7-alpine
WORKDIR /code
ENV FLASK_APP=application.py
ENV FLASK_RUN_HOST=0.0.0.0
COPY requirements.txt .
COPY application.py .
RUN pip install -r requirements.txt
EXPOSE 5000
CMD ["flask", "run"]