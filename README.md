# Python App on Google Cloud Platform with Terraform & Cloud Build

A sample project demonstrating how to deploy a Python application to **Google Cloud Platform (GCP)** using **Docker**, **Artifact Registry**, **Cloud Run**, **Terraform**, and **Cloud Build**.

## 🚀 Features

* Python web application
* Docker containerization
* Google Artifact Registry for image storage
* Cloud Run deployment
* Infrastructure as Code using Terraform
* CI/CD pipeline using Cloud Build
* GitHub integration
* 

---

## 📁 Project Structure

```text
python-app/
│
├── app/
│   ├── main.py
│   └── requirements.txt
│
├── terraform/
│   ├── main.tf
│   ├── variables.tf
│   ├── terraform.tfvars
│   ├── outputs.tf
│   └── provider.tf
│
├── Dockerfile
├── cloudbuild.yaml
├── .gitignore
└── README.md
```

---

## 🏗️ Architecture

```text
Developer
    │
    ▼
GitHub
    │
    ▼
Cloud Build Trigger
    │
    ▼
Build Docker Image
    │
    ▼
Push Image to Artifact Registry
    │
    ▼
Terraform Apply
    │
    ▼
Cloud Run
    │
    ▼
Application URL
```

---

## 📋 Prerequisites

Install the following tools:

* Git
* Docker Desktop
* Google Cloud SDK
* Terraform

Authenticate with Google Cloud:

```bash
gcloud auth login
gcloud config set project teak-span-504223-e1
```

---

## ☁️ Enable Required APIs

```bash
gcloud services enable \
run.googleapis.com \
artifactregistry.googleapis.com \
cloudbuild.googleapis.com
```

---

## 📦 Build the Docker Image

```bash
docker build -t asia-south1-docker.pkg.dev/teak-span-504223-e1/demo/demo:latest .
```

---

## 📤 Push the Image

```bash
docker push asia-south1-docker.pkg.dev/teak-span-504223-e1/demo/demo:latest
```

---

## 🏗️ Deploy with Terraform

Initialize Terraform:

```bash
terraform init
```

Preview the deployment:

```bash
terraform plan
```

Deploy the infrastructure:

```bash
terraform apply
```

To remove all deployed resources:

```bash
terraform destroy
```

---

## ⚙️ Cloud Build CI/CD

The `cloudbuild.yaml` pipeline performs the following steps:

1. Build the Docker image
2. Push the image to Artifact Registry
3. Run `terraform init`
4. Run `terraform plan`
5. Run `terraform apply`

After a Cloud Build trigger is configured, every push to the `main` branch automatically deploys the latest version of the application.

---

## 🔄 Git Workflow

```bash
git add .
git commit -m "Update application"
git push origin main
```

---

## 📌 Useful Commands

List Docker images:

```bash
docker images
```

List images in Artifact Registry:

```bash
gcloud artifacts docker images list asia-south1-docker.pkg.dev/teak-span-504223-e1/demo
```

List Cloud Run services:

```bash
gcloud run services list --region=asia-south1
```

Check Terraform state:

```bash
terraform state list
```

---

## 📚 Technologies

* Python
* Docker
* Terraform
* Google Cloud Run
* Google Artifact Registry
* Google Cloud Build
* GitHub

---

## 🎯 Future Enhancements

* Remote Terraform state using Cloud Storage
* Separate DEV, TEST, and PROD environments
* IAM best practices
* Secret Manager integration
* Custom domain mapping
* GitHub Pull Request validation
* Manual approval before production deployments
* Monitoring and Logging

---

## 📄 License

This project is provided for learning and demonstration purposes.
