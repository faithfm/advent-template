# Advent Services Template

This template is intended to serve as a baseline for deploying other **advent.services** apps.

## Anatomy of the template

The architecture used for **advent.services** includes the following characteristics:

* Serverless Framework
* Node Express API
* Most will be Apollo GraphQL serverless - serverless-plugin-typescript
* Deployed to AWS Lambda
* es how to develop and deploy a simple Node Express API running on AWS Lambda using the traditional Serverless Framework.


## Naming:
* Service: sls-advent-XXXX
* Github repo: advent-XXXX
* DNS: XXXX.advent.services   (+ XXXX-*dev*. and XXXX-*staging*.)


## Project Configuration:

The main things that need to be changed in the serverless.yml files are:

* service: sls-advent-XXXXX     (ie: name of the service - will normally match XXXXX.advent.services domain name)

## Environment:



Create 3x .env files:

* `.env.dev`
* `.env.staging`
* `.env.prod`

Each of these files should contain the following:   (sample typical for a **dev** stage)

```env
AWS_PROFILE=xxxxx

APP_URL=template-dev.advent.services

MONGO_URI='mongodb+srv://template_dev:XXXXXX@template-dev.XXXXX.mongodb.net/?retryWrites=true&w=majority'

```

## AWS Configuration:

It is recommended NOT to use the default AWS profile, but to use a separate one specifically for advent.services development.

Sample `~/.aws/config` file:
```
[default]
region=ap-southeast-2

[profile advent]
region=ap-southeast-2
...
```

Sample `~/.aws/credentials` file:
```
[default]
aws_access_key_id=XXXX
aws_secret_access_key=XXXX

[advent]
aws_access_key_id=XXXX
aws_secret_access_key=XXXX
...
```

In order to user this profile, the following setting would be required in the `.env.XXX` files:
```env
AWS_PROFILE=advent
```

