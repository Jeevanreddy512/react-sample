# Pull Official Base Image
FROM node:latest

# Set Working Directory
WORKDIR /app

# Install App Dependencies
COPY ["package.json", "yarn.lock", "/app/"]
RUN npm install

# Add App
COPY [".", "/app"]

# Start App
EXPOSE 3000
CMD ["npm", "build"]
