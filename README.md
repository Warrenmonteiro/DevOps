# Azure Landing Zone Lite (Terraform)

## Purpose
This repository is the foundation for an Azure Landing Zone Lite built using Terraform. Day 1 establishes a minimal, working Terraform setup to validate tooling, workflow, and local execution before introducing any cloud resources.

## Architecture (Currently Minimal)
- Terraform configuration only
- No cloud providers or infrastructure yet
- One output used to validate terraform execution

## Future Iterations will introduce:
- Azure provider
- Resource groups
- Networking
- Network security groups

## Deploy
Prerequisites:
- Terraform installed and available on PATH

Steps:
1. Clone the repo
2. Run 'terraform init'
3. Run 'terraform plan'
4. Run 'terraform apply'
5. Confirm output with 'terraform output'

## Rollback
- Run `terraform destroy` to remove Terraform state and outputs
- No cloud infrastructure is created at this stage

## Troubleshoot
- If `terraform` is not recognized, verify it is installed and on PATH
- If `terraform plan` fails, check syntax in `.tf` files
- If outputs do not appear, ensure `terraform apply` has been run


