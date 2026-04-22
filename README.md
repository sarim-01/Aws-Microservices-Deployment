# 🚀 AWS Microservices Deployment with Kubernetes (KIND)

![AWS](https://img.shields.io/badge/AWS-EC2-orange?logo=amazon-aws)
![Kubernetes](https://img.shields.io/badge/Kubernetes-KIND-blue?logo=kubernetes)
![Docker](https://img.shields.io/badge/Docker-Containerized-blue?logo=docker)
![Terraform](https://img.shields.io/badge/IaC-Terraform-purple?logo=terraform)
![Python](https://img.shields.io/badge/Backend-Python-green?logo=python)
![Status](https://img.shields.io/badge/Project-Deployed-success)

---

## 🧠 Overview

A complete end-to-end DevOps microservices deployment pipeline using modern cloud-native tools.

This project demonstrates how to:

- 🐳 Containerize microservices using Docker
- ☁️ Provision AWS infrastructure using Terraform
- ☸️ Deploy a Kubernetes cluster using KIND
- 🚀 Deploy frontend & backend services
- 🔧 Debug real-world production issues

---

## 🏗️ Architecture

```
User → AWS EC2 → Kubernetes Cluster (KIND)
                        │
              ┌─────────────────────┐
              │      Frontend       │  🌐 NodePort: 30080
              └─────────────────────┘
                        │
              ┌─────────────────────┐
              │      Backend        │  ⚙️ ClusterIP
              └─────────────────────┘
```

---

## ⚙️ Tech Stack

| Layer             | Technology          |
|-------------------|---------------------|
| ☁️ Cloud          | AWS EC2             |
| 🐳 Containers     | Docker              |
| ☸️ Orchestration  | Kubernetes (KIND)   |
| 🏗️ IaC            | Terraform           |
| 🐍 Backend        | Python              |
| 🌐 Frontend       | HTML / CSS / JS     |

---

## 🚀 Deployment Workflow

### 1️⃣ Infrastructure Provisioning

```bash
cd infrastructure/terraform
terraform init
terraform apply
```

### 2️⃣ Connect to EC2

```bash
ssh -i <key.pem> ubuntu@<EC2_PUBLIC_IP>
```

### 3️⃣ Install Tools

- Docker 🐳
- kubectl ☸️
- KIND ⚙️

### 4️⃣ Create Kubernetes Cluster

```bash
kind create cluster --name microservices
kubectl get nodes
```

### 5️⃣ Deploy Microservices

```bash
cd kubernetes/manifests
kubectl apply -f .
```

### 6️⃣ Verify Deployment

```bash
kubectl get pods
kubectl get svc
```

---

## 🌐 Application Access

```
http://<EC2_PUBLIC_IP>:30080
```

---

## ⚠️ Challenges Faced

- Pods stuck in `Pending` state due to memory limits
- `ImagePullBackOff` due to Docker Hub issues
- SSH connection instability under load
- KIND cluster instability on low-resource EC2

---

## ✅ Solutions Implemented

- Reduced replicas (4 → 2 → 1) for memory optimization
- Manually built & pushed Docker images
- Restarted KIND cluster for stability
- Debugged using:
  - `kubectl describe`
  - `kubectl logs`
  - `kubectl get events`

---

## 📦 Docker Images

- 🐳 `sarimrasheed/microservice-backend:latest`
- 🐳 `sarimrasheed/microservice-frontend:latest`

---

## 🔮 Future Improvements

- 🔄 CI/CD with GitHub Actions
- ☸️ Move to AWS EKS (Managed Kubernetes)
- 📊 Add Prometheus + Grafana monitoring
- 🌍 Replace NodePort with LoadBalancer

---

## 👨‍💻 Author

**Sarim Rasheed**  
🎓 BS Computer Science – FAST NUCES Islamabad

---

## ⭐ Support

If you like this project, don't forget to ⭐ the repository!
