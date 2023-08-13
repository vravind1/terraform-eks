# Provision EKS using Terraform
This repository contains Terraform code to create an Amazon Elastic Kubernetes Service (EKS) cluster. The code automates the deployment and management of Kubernetes applications on the AWS cloud using Terraform.
## Setup

### AWS Credentials
Setup credentials as environment variables 

```
$ export AWS_ACCESS_KEY_ID="aws-access-key"
$ export AWS_SECRET_ACCESS_KEY="aws-secret-key"
```

### Install Terraform

```
$ brew tap hashicorp/tap
$ brew install hashicorp/tap/terraform
```
Installation [guide](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli)

## Provision

### Clone the repository
Download the TF configuration files
```
$ git clone https://github.com/vravind1/terraform-eks.git
```

### Terraform Init
Initialize Terraform to get necessary providers and modules.
```
mkdir terraform-eks
$ terraform init
```
### Terraform Plan
Create execution plan.
```
$ terraform plan
```

### Terraform apply
Execute the actions proposed in a Terraform plan.
```
$ terraform apply
```
## Access the EKS Cluser

### Install ```kubectl```

Installation [guide](https://kubernetes.io/docs/tasks/tools/install-kubectl-macos/)
```
$ brew install kubectl
```
### Install ```aws-cli```
Installation [guide](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html)

### Update the kube config for your cluster
Run this command to update the kube config with your cluster details
```
$ aws eks --region us-east-2 update-kubeconfig --name <eks-cluser-name>
```

### List the nodes
Run this command to get the current status of all nodes in the cluster
```
$ kubectl get nodes
NAME                                       STATUS   ROLES    AGE     VERSION
ip-10-0-1-182.us-east-2.compute.internal   Ready    <none>   3h25m   v1.24.15-eks-a5565ad
ip-10-0-1-99.us-east-2.compute.internal    Ready    <none>   3h25m   v1.24.15-eks-a5565ad
ip-10-0-2-49.us-east-2.compute.internal    Ready    <none>   3h25m   v1.24.15-eks-a5565ad
```
