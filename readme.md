# NodeJS QR 

![Build Status](https://github.com/rayblair06/ecs-html-example/workflows/Build/badge.svg) ![Tests Status](https://github.com/rayblair06/ecs-html-example/workflows/Lint%20and%20tests/badge.svg)

A simple NodeJS server example for ECS deployment

## Requirements

- [Docker](https://www.docker.com/)
- [NPM](https://www.npmjs.com) / [Yarn](https://yarnpkg.com)

## Installation

### _Development_

Follow the steps below to build and start the NodeJS server.

Generate environment variables.
```
cp .env.example .env
```

Build Docker image and start Docker container.
```
make build
make start
```

## Commands
```
npm start                     # Start NodeJS server
npm run lint                  # Run linter
npm run lint:fix              # Run linter and fix formatting
npm run test                  # Run tests with Jest
```
