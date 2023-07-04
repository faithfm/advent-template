FROM node:18.16.1-bookworm-slim
WORKDIR /app
COPY package*.json ./
RUN npm ci --only=production
# RUN rm -rf node_modules && yarn install --frozen-lockfile && yarn cache clean
COPY . .
EXPOSE ${DOCKER_PORT}
CMD ["node", "index.js"]
# RUN apt-get update && apt-get install -y --no-install-recommends dumb-init
# CMD ["dumb-init", "node", "index.js"]
