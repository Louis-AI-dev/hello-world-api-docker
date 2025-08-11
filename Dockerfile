# Étape 1 : Choisir l'image Python
FROM python:3.12

# Étape 2 : Définir le dossier de travail
WORKDIR /app

# Étape 3 : Copier les fichiers
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

# Étape 4 : Lancer FastAPI avec Uvicorn
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
