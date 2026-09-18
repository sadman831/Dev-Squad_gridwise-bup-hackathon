FROM python:3.11-slim

WORKDIR /app

# Install system dependencies if needed for PuLP/CBC
RUN apt-get update && apt-get install -y --no-install-recommends coinor-cbc && rm -rf /var/lib/apt/lists/*

# Copy requirements or install directly
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy source code
COPY . .

EXPOSE 8000

# Bind to 0.0.0.0 as required by evaluation rules
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]