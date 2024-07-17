FROM ubuntu:latest
LABEL authors="kebweb"

ENTRYPOINT ["top", "-b"]

# Utiliser l'image de base officielle de Python 3.12
FROM python:3.12

# Définir le répertoire de travail dans le conteneur
WORKDIR /app

# Copier les fichiers de l'application dans le conteneur
COPY . /app

# Installer les dépendances
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Exposer le port sur lequel l'application va tourner
EXPOSE 8000

# Définir la commande par défaut pour exécuter le serveur Django
CMD ["python", "manage.py", "runserver", "127.0.0.1:8000"]
