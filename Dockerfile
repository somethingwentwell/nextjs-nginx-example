# Dockerfile
FROM node:20

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
COPY app/package*.json ./
RUN npm install

# Bundle app source
COPY app/ .

# Build Next.js application
RUN npm run build

# Start Next.js application
CMD ["npm", "start"]