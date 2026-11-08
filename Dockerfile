FROM node:20-bookworm-slim
RUN apt-get update && apt-get install -y --no-install-recommends unzip python3 ca-certificates && rm -rf /var/lib/apt/lists/*
WORKDIR /app
COPY package.json server.js setup.js ./
RUN node setup.js
EXPOSE 8080
CMD ["node", "server.js"]
