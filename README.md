# AWS High Availability Architecture  
**Author:** José Martinez | Arkhadia by GHC  

---

## 📘 Introduction

This project deploys a **High Availability (HA)** architecture on **Amazon Web Services (AWS)** using:

- **Terraform** for Infrastructure as Code (IaC)  
- **Ansible** for provisioning and server configuration  

The goal is to create a secure, scalable, and reproducible environment, aligned with enterprise-grade requirements.

---

## 🎯 Objectives

- Deploy a **highly available and secure** cloud architecture  
- Automate the infrastructure and provisioning processes  
- Separate application and database workloads  
- Configure **monitoring and alerts** using Amazon CloudWatch  

---

## ☁️ Services Used

- **Amazon VPC** (custom VPC with public and private subnets)  
- **EC2 Auto Scaling Group** with Launch Template  
- **Application Load Balancer (ALB)**  
- **Amazon RDS (MySQL)** with Multi-AZ  
- **Amazon CloudWatch** (metrics, logs, alarms)  
- **IAM** roles with least privilege  
- **Terraform** for infrastructure deployment  
- **Ansible** for provisioning and Nginx configuration  

---

## 🚀 Deployment Phases

### Phase 1: Networking (VPC)
- VPC CIDR: `10.0.0.0/16`
- 2 public + 2 private subnets (AZ: `us-east-1a`, `us-east-1b`)
- Internet Gateway, NAT Gateway, custom route tables

### Phase 2: EC2 + Launch Template + Auto Scaling
- Amazon Linux 2023 AMI
- Launch Template with User Data
- Auto Scaling Group in public subnets

### Phase 3: Application Load Balancer (ALB)
- ALB routing HTTP traffic
- Integrated with Auto Scaling Group instances

### Phase 4: RDS MySQL
- Deployed in private subnets
- Multi-AZ, automated backups, deletion protection
- Connection tested from EC2 with MySQL CLI

### Phase 5: CloudWatch
- Alarms for CPU utilization thresholds
- Enabled detailed monitoring

### Phase 6: Ansible Provisioning
- Inventory with EC2 public IPs
- Bootstrap playbook to install Python 3
- Installed and configured Nginx with a custom landing page

---

## ⚠️ Issues Encountered & Solutions

| Issue                                           | Solution                                      |
|------------------------------------------------|-----------------------------------------------|
| Amazon Linux 2023 lacks Python                 | Used Ansible bootstrap playbook               |
| Apt package errors                             | Switched to `dnf` package manager             |
| File ownership errors with `www-data` user     | Changed ownership to `nginx`                 |
| Nginx failed to start                          | Adjusted permissions and verified config      |
| Terraform attempted to destroy resources       | Refined names and configurations              |

---

## ✅ Results

- ✅ ALB routes traffic to EC2 instances
- ✅ Custom Nginx webpage accessible via ALB DNS
- ✅ RDS MySQL available from EC2, tested successfully
- ✅ CloudWatch alarms functioning as expected

---

## 🧱 General Architecture Overview

- VPC with public/private subnets  
- Internet Gateway & NAT Gateway  
- Application Load Balancer  
- Auto Scaling Group with EC2  
- RDS MySQL (Multi-AZ)  
- CloudWatch alarms and metrics  
- Terraform modules for each component  
- Ansible roles/playbooks for provisioning  

---

## 📂 Terraform Modules

- `vpc` – Custom networking  
- `ec2` – Launch Template and ASG  
- `alb` – Load balancer and target group  
- `rds` – MySQL in private subnets  
- `cloudwatch` – Monitoring and alarms  

---

## 🔧 Ansible Configuration

- `inventory.ini` – List of EC2 IPs  
- `bootstrap.yml` – Python 3 setup on Amazon Linux 2023  
- `nginx.yml` – Web server provisioning and configuration  

---

## 📊 Monitoring: CloudWatch

- CPU alarms for scaling thresholds  
- Detailed monitoring from EC2 instances  
- Log delivery enabled  

---

## 🧾 Conclusions

This project demonstrates the successful implementation of a **Highly Available AWS environment**, built from scratch and aligned with best practices in:

- Infrastructure as Code (Terraform)  
- Automated Configuration (Ansible)  
- Security, scalability, and monitoring  

The result is a robust and reproducible architecture ready for production or testing.

---

## 📬 Contact

We would love to hear from you:

- 📧 jmartinez@arkhadia.net  
- 📱 +507 6363-6738  
- 🌐 [@genialcorpholding](https://github.com/genialcorpholding)

---

