# docker-pactum-flow

PactumJS Flow in Docker

## Installation

Create `app` & `core` folders.

#### Build pactum-flow-ui

```sh
npm run build
```

Copy the contents of `dist` folder into `app` folder.

#### Copy pactum-flow-api

Copy `package.json` and `src` folder into `core` folder.

## Run

```sh
docker-compose up -d
```

## Build

```sh
docker build -t asaianudeep/pactumjs:latest .
```

## Publish

```sh
docker push asaianudeep/pactumjs:latest
```