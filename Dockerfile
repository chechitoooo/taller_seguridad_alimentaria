FROM python:3.11-slim

# Instalar Java para tabula-py
RUN apt-get update && apt-get install -y default-jre && rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

RUN mkdir -p resultados

CMD ["python", "analisis_docker.py"]