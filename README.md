<<<<<<< HEAD
# Aws-Microservices-Deployment
=======
# AWS Microservices Deployment

Multi-tier application deployment using Terraform, Ansible, Kubernetes, GitHub Actions, and ArgoCD.

## Architecture

- **Frontend:** Nginx serving static HTML
- **Backend:** Flask REST API
- **Infrastructure:** AWS EC2 (t2.medium, Ubuntu 22.04)
- **Orchestration:** Kubernetes (microk8s)
- **CI/CD:** GitHub Actions + ArgoCD

## Prerequisites

- AWS account with CLI configured
- SSH key (`project3-key.pem`) in AWS
- Docker Hub account
- Terraform >= 1.0
- Ansible >= 2.9

## Deployment Steps

### 1. Create Infrastructure

```bash
cd infrastructure/terraform
terraform init
terraform plan
terraform apply
# Note the EC2 IP from output
```

### 2. Configure EC2

```bash
cd ../ansible
# Edit inventory.ini - replace REPLACE_WITH_EC2_IP
ansible-playbook playbook.yml
```

### 3. Install ArgoCD on K8s

```bash
ssh -i project3-key.pem ubuntu@<EC2-IP>
microk8s kubectl create namespace argocd
microk8s kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml
```

### 4. Deploy Application

```bash
microk8s kubectl apply -f kubernetes/argocd/application.yaml
```

### 5. Access Application

- Frontend: `http://<EC2-IP>:30080`
- ArgoCD: `http://<EC2-IP>:8080`

## GitHub Secrets

Add to repository settings:

- `DOCKER_USERNAME`: Your Docker Hub username
- `DOCKER_TOKEN`: Docker Hub access token

## Cleanup

```bash
cd infrastructure/terraform
terraform destroy
```
>>>>>>> 2823565 (Initial commit - AWS Microservices Deployment with Kubernetes)
