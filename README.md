# DevOps EKS Portfolio

A collection of 5 standalone AWS EKS deployment projects, each demonstrating a different CI/CD and Kubernetes deployment pattern using Terraform, Docker, Jenkins, and Helm.

## Projects

| # | Project | Stack | README |
|---|---------|-------|--------|
| 1 | Flask App on EKS with CI/CD | Python Flask, Terraform, Docker, Jenkins, K8s manifests | [01-flask-eks-cicd/README.md](01-flask-eks-cicd/README.md) |
| 2 | Blue-Green Deployment | Node.js, Helm, Jenkins, Terraform | [02-bluegreen-helm/README.md](02-bluegreen-helm/README.md) |
| 3 | Multi-Environment Pipeline | Microservices, Terraform Workspaces, ECR, Jenkins | [03-multienv-microservices/README.md](03-multienv-microservices/README.md) |
| 4 | React + Node Full-Stack CI/CD | React, Node.js, Docker, Terraform, Jenkins, Helm | [04-fullstack-react-node/README.md](04-fullstack-react-node/README.md) |
| 5 | High Availability Auto-Scaling | HPA, Cluster Autoscaler, Terraform, Jenkins | [05-ha-autoscaling/README.md](05-ha-autoscaling/README.md) |

## Repository Structure

```
devops-eks-portfolio/
├── 01-flask-eks-cicd/
├── 02-bluegreen-helm/
├── 03-multienv-microservices/
├── 04-fullstack-react-node/
├── 05-ha-autoscaling/
└── README.md   <- you are here
```

Each project directory is self-contained: its own `terraform/`, application code, `Dockerfile`(s), `Jenkinsfile`, Kubernetes manifests or Helm charts, and a dedicated `README.md` with setup and run instructions specific to that project.

## Common Prerequisites (all projects)

- AWS account with permissions for EKS, VPC, ECR, IAM
- Terraform >= 1.5
- AWS CLI v2, configured (`aws configure`)
- kubectl
- Docker
- Jenkins (with AWS credentials plugin, Docker, and kubectl/helm available on the agent)
- Helm (required for projects 2 and 4)

## Suggested Order to Build / Present

1. **Project 1** first — it establishes the base Terraform pattern (VPC → EKS → ECR) reused/adapted by the other four.
2. **Project 5** next — same base infra, adds HPA + Cluster Autoscaler, good follow-up to show scaling.
3. **Project 3** — shows environment segregation using Terraform workspaces.
4. **Project 2** — introduces Helm and a safer deployment strategy (blue/green).
5. **Project 4** — combines everything into a multi-service full-stack pipeline.

## Notes

- Each project's Terraform is independent (separate state) so projects can be applied/destroyed without affecting each other. In a real org you'd typically share one VPC/EKS cluster across namespaces instead of provisioning 5 clusters — that tradeoff is called out in each project's README.
- Trivy scanning, non-root containers, and resource requests/limits are treated as baseline security practices across all Dockerfiles/manifests, not just project 1.
