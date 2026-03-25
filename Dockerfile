FROM python:3.10-slim
WORKDIR /app
COPY addition.py /app
CMD ["python3", "addition.py"]
