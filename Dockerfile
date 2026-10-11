FROM python:3.14-slim
RUN apt-get update
RUN apt-get install -y build-essential
COPY . /app
RUN pip install -r /app/App/requirements.txt
RUN apt-get purge -y build-essential && apt-get autoremove -y
RUN rm -rf /var/lib/apt/lists/*
WORKDIR /app/App
CMD ["python", "app.py"]
