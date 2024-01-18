# Utiliser une image officielle de Node en spécifiant la version
FROM node:latest

# Définir le répertoire de travail à l'intérieur du conteneur
WORKDIR /app

# Copier le contenu du répertoire local dans le répertoire de travail du conteneur
COPY . /app/

# Installer les dépendances nécessaires
RUN npm install

# Installer Angular CLI globalement
RUN npm install -g @angular/cli

# Exposer le port sur lequel Angular sera exécuté
EXPOSE 4200

# Commande pour lancer l'application Angular
CMD ["ng", "serve", "--host", "0.0.0.0"]