FROM python:alpine3.20

WORKDIR /app
COPY requirements.txt .
COPY app.py .

RUN pip install -r requirements.txt --no-cache-dir

CMD ["python", "app.py"]