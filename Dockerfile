FROM node:18-alpine

WORKDIR /app

# Copier uniquement package.json
COPY package.json ./

# Installer toutes les dépendances (dev + production)
RUN npm install

# Copier le reste du code du projet
COPY . .

EXPOSE 3000

# Lancer l'application avec nodemon en mode dev ou remplacer par node si besoin
CMD ["npm", "run", "dev"]
