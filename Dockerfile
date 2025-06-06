FROM python:3.11-slim

WORKDIR /app

# Install langchain-community first
RUN pip install --no-cache-dir langchain-community

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY app.py .

EXPOSE 7860

CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "7860"]
