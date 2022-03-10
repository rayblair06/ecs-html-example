# Node.js base image for development and production
FROM node:16.13.2-alpine AS base

WORKDIR /app



# Start with fully-featured Node.js base image
FROM base AS build

# Copy dependency information and install all dependencies
COPY package.json package-lock.json ./

RUN npm ci

# Copy source code (and all other relevant files)
COPY src ./src



# Build Stage (If we had one)
# FROM build as builder

# RUN npm run build



# Run-time stage
FROM base AS release

# Copy dependency information and install production-only dependencies
COPY package.json package-lock.json ./
RUN npm ci --production

# copy source
COPY --from=build /app/src ./src

# Expose port 80
EXPOSE 80

# Start server
CMD ["node", "src/server.js"]
