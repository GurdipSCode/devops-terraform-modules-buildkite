# 🚀 devops-terraform-modules-buildkite

Reusable **OpenTofu** modules for managing **Buildkite** infrastructure in a clean, opinionated, GitOps-friendly way.

<p align="left">
  <img src="https://img.shields.io/badge/OpenTofu-6B3EFF?style=flat&logo=opentofu&logoColor=white" />
  <img src="https://img.shields.io/badge/Buildkite-14CC80?style=flat&logo=buildkite&logoColor=white" />
  <img src="https://img.shields.io/badge/GitOps-Ready-orange?style=flat&logo=git&logoColor=white" />
  <img src="https://img.shields.io/badge/OPA-Policy--Ready-7D3C98?style=flat&logo=openpolicyagent&logoColor=white" />
</p>

---

## 📦 What This Repo Is

This repository provides **production-ready OpenTofu modules** for managing **Buildkite** resources such as:

- 🧩 Pipelines  
- 🤖 Agent tokens  
- 👥 Teams (RBAC)  
- 🏢 Org-level baselines  

---

## 🧱 Modules

| Module | Description |
|------|-------------|
| 🛠 `pipeline` | Create and manage Buildkite pipelines |
| 🤖 `agent` | Generate agent tokens for queues or environments |
| cluster    | Creates build clusters |
| 👥 `team` | Manage Buildkite teams (RBAC) |
| 🏢 `org` | Opinionated org baseline (teams, pipelines, agents) |

---

## 🧪 Example Usage

```hcl
module "pipeline" {
  source = "git::ssh://git@github.com/your-org/terraform-buildkite-modules.git//modules/pipeline?ref=v1.0.0"

  name       = "bk-api-service"
  repository = "git@github.com:your-org/api-service.git"
}

