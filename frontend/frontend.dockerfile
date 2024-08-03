# Development stage
FROM node:18-alpine3.17 AS dev

# Set the working directory
WORKDIR /app

# Copy the package.json and package-lock.json files
COPY package*.json ./

# Install dependencies
RUN npm ci

# Copy everything to the container
COPY . .

RUN npm run build

# Production stage
FROM caddy:2-alpine AS prod
COPY Caddyfile /etc/caddy/Caddyfile
COPY --from=dev /app/dist /srv

