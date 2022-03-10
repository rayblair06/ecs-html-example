# ECS HTML Example

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

## ECS Setup

- Create Cluster.
- Create Task Definition.
- Get JSON of Task Definition and place within repo.
- Create Service within Cluster with Task Definition
	- Optionally create a load balancer to resolve as task ip constantly changes.
	- Note: Makesure to specify the ECS network as network, it seems to default to a random VPN sometimes.
- Update `deploy.yml` workflow with information created above.

```
env:
  AWS_REGION: eu-west-2                             # set this to your preferred AWS region, e.g. eu-west-2
  ECR_REPOSITORY: ecs-html-example                  # set this to your Amazon ECR repository name
  ECS_SERVICE: ecs-html-example                     # set this to your Amazon ECS service name
  ECS_CLUSTER: default                              # set this to your Amazon ECS cluster name
  ECS_TASK_DEFINITION: .aws/task-definition.json    # set this to the path to your Amazon ECS task definition
                                                    # file, e.g. .aws/task-definition.json
  CONTAINER_NAME: ecs-html-example                  # set this to the name of the container in the
                                                    # containerDefinitions section of your task definition
```
