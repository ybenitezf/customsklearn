# Notes

This is a dummy project to demonstrate the process of building of a custom docker image for a SageMaker pipeline

You need to create a registry, private should be ok, using the aws console, in the ECR repository under `View push commands` you will find the necessary information for pushing your images:

You need to login to the `sagemaker` ECR registry first to get the base docker image:

```bash
aws ecr get-login-password --region eu-west-1 | docker login --username AWS --password-stdin 141502667606.dkr.ecr.eu-west-1.amazonaws.com
```

**Note** the above only to obtain the image the first time, once you have it, it is no longer necessary

Then build the image with:

```bash
docker build -t sagemaker-scikit-learn-demo .
```

Login to aws ecr for image push

```bash
aws ecr get-login-password --region eu-west-1 | docker login --username AWS --password-stdin ACCOUNT-ID.dkr.ecr.eu-west-1.amazonaws.com
```

Replace `ACCOUNT-ID` with a [valid aws account id](https://www.apn-portal.com/knowledgebase/articles/FAQ/Where-Can-I-Find-My-AWS-Account-ID)

And push the image to your repository, for example:

```bash
docker image push ACCOUNT-ID.dkr.ecr.eu-west-1.amazonaws.com/sagemaker-scikit-learn-demo:v0.1
```
