FROM python:3.13-slim

WORKDIR /app

COPY requirements.txt ./
RUN python -m pip install --no-cache-dir -r requirements.txt

COPY src ./src

EXPOSE 8000

ENV PYTHONUNBUFFERED=1

CMD ["uvicorn", "src.app:app", "--host", "0.0.0.0", "--port", "8000"]
