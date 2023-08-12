FROM python:3.11.0-slim
WORKDIR /data
RUN apt-get update
RUN apt-get install -y build-essential python-dev git
RUN pip install -U pip setuptools wheel

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY . .

RUN chmod a+x entrypoint.sh

CMD ./entrypoint.sh

EXPOSE 8501
