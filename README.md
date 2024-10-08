# Qovery EKS Installation Guide

Simple example on how to deploy Qovery on a self-managed EKS cluster

## EKS Cluster installation

### Personalize variables

Review the `variables.tf` file and change the default values as needed.

You can also specify custom values on the fly using the command line.

```shell
terraform apply -var variable_name="custom_value" -var another_variable="$ENV_VARIABLE"
```

### Init Terraform

Init your environment to download all the required modules.

```bash
terraform init
```

### Apply Terraform

Plan and Apply the Terraform files.

```bash
terraform plan
terraform apply
```

## Kubernetes Configuration

### Configure kubectl

Once your EKS cluster is created, you need to configure `kubectl` to connect to it.

```shell
aws eks update-kubeconfig --region your-region --name cluster-name
```

## Qovery Installation

### Install Qovery

Follow the instruction on [the official documentation](https://hub.qovery.com/docs/getting-started/install-qovery/aws/self-managed-cluster/) to install Qovery on your cluster.

```shell
qovery cluster install
```

Select EKS, and respond to the prompts to install Qovery on your AWS EKS Kubernetes cluster.

### Validate your installation

When you finished your Qovery installation, we have a checklist to validate your cluster installation available [here](https://hub.qovery.com/docs/getting-started/install-qovery/kubernetes/validate-installation/).
