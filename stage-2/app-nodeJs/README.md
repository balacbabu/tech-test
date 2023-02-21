# Node JS API

## Dependencies  

- [Node](https://nodejs.org/en/)
- [PostgreSQL](https://www.postgresql.org/)
- [npm](https://www.npmjs.com/)

## Build

#### Install dependencies:
```sh
npm i
```

#### Set environment vars:
```sh
cp .env.example .env
```

#### Run application in docker:
```
cd tech-test/stage-2/app-nodeJs
docker-compose -f ./docker-compose.yml up -d
```

#### Start Postgres:
```sh
docker run  -p 5432:5432 -e POSTGRES_PASSWORD=password -d postgres`
```

#### Build:
```sh
npm run build
```

#### Run:
```sh
npm run start
```
#### Run Prod:
```sh
node dist/index.js
```

## Test

#### Tests:
```sh
npm run test
```

#### Lint:
```sh
npm run lint
```

#### To run the application on a container:
- Just run the below command:
```
docker-compose -f ./docker-compose.yml up -d
```
- goto 0.0.0.0:4000
- Application starts now but throwing 404 API not found error. 
