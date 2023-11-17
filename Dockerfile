FROM python:3.11-slim

WORKDIR /code

RUN pip install --no-cache-dir --upgrade pip
RUN pip install --no-cache-dir --upgrade streamlit


COPY . /code

EXPOSE 8080

ENTRYPOINT ["streamlit", "run", "🏠_Home.py", "--server.port=8080", "--server.address=0.0.0.0"]