# Trying out terraform

## Dependencies:

- Localstack
- AWS CLI
- Terraform CLI

## Install Localstack

- Check locakstack website for instalation

## Configure AWS PROFILE

On `~/.aws/credentials`  set

```
[localstack]
aws_access_key_id = dummy
aws_secret_access_key = dummy
```

and on `~/.aws/config` file set:

```
[profile localstack]
region = us-east-1
output = json
endpoint_url = http://localhost:4566
```

## Start localstack server

```sh
localstack start
```

## Running

- Setup infra

```sh
terraform apply
```

- Check the changes then write `yes`. So all the changes will be saved.
