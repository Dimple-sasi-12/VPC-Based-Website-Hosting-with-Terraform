# Hosting a Website on AWS EC2 Using Terraform

---

## Overview
This project demonstrates the creation of a **Virtual Private Cloud (VPC)** and associated resources using **Terraform**, deploying an **EC2 instance** in the VPC, configuring the instance with a web server, and hosting a website. 

---

## Steps Involved

### 1. Creating AWS Infrastructure Using Terraform

#### VPC Creation:
- A **Virtual Private Cloud (VPC)** is created with a custom CIDR block (`192.168.12.0/24`).

#### Subnet:
- A **public subnet** is created within the VPC (`192.168.12.0/26`).

#### Internet Gateway:
- An **Internet Gateway (IGW)** is attached to the VPC to enable internet connectivity.

#### Route Table:
- A route table is created with a route to the Internet Gateway for internet access.
- The public subnet is associated with this route table.

#### Security Group:
- A **security group** is created to allow **HTTP (port 80)** and **SSH (port 22)** traffic.

#### EC2 Instance:
- An **EC2 instance** is launched in the public subnet using the above VPC and security group.

---

### 2. Configuring the EC2 Instance

- Connect to the EC2 instance via SSH.
- Install necessary packages like **Git** and **Apache (HTTPD)**.
- Clone the website repository from GitHub and make it accessible through Apache.
- Access the website using the EC2 instance’s public IPv4 address and HTTP port (default port 80):
