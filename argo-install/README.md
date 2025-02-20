# Grafana, Prometheus, and Alertmanager Setup with ArgoCD

This repository contains Terraform configurations and ArgoCD Application manifests for deploying **Grafana**, **Prometheus**, and **Alertmanager** on **GKE**, **AKS**, and **EKS** clusters.

## Prerequisites
- Install [Terraform](https://developer.hashicorp.com/terraform/downloads)
- Install [kubectl](https://kubernetes.io/docs/tasks/tools/)
- Install [Helm](https://helm.sh/docs/intro/install/)
- Install [ArgoCD](https://argo-cd.readthedocs.io/en/stable/getting_started/)
- Configure Kubernetes access ()

## Deploying Monitoring Tools
1. Navigate to the environment (`dev` or `prod`):
   ```sh
   cd environments/dev
   ```
2. Initialize Terraform:
   ```sh
   terraform init
   ```
3. Apply the configuration:
   ```sh
   terraform apply -auto-approve
   ```
4. ArgoCD will automatically deploy Grafana, Prometheus, and Alertmanager based on the Application manifests.

## Selective Deployment
To enable or disable specific tools, pass the appropriate variables. For example, to only deploy Grafana and Prometheus:
```sh
terraform apply \
  -var="enable_grafana=true" \
  -var="enable_prometheus=true" \
  -var="enable_alertmanager=false"
```

## Destroying Resources
```sh
terraform destroy -auto-approve
```
Run this in the environment directory.
