# Azure Landing Zone Lite (Terraform)

## Purpose
This repository is the foundation for an Azure Landing Zone Lite built using Terraform. 
Day 1 establishes a minimal, working Terraform setup to validate tooling, workflow, and local execution before introducing any cloud resources.
Day 2 includes creating and publishing a resource group
Day 3 is where we added a virtual network with a /24 subet

## Architecture (Currently Minimal)
- Terraform configuration only
- No cloud providers or infrastructure yet
- One output used to validate terraform execution
- Resource Group
- Virtual Network (10.0.0.0/16)
- Subnet (10.0.1.0/24)

### Diagram (placeholder)

Resource Group
└─ Virtual Network
   └─ Subnet
      └─ Network Security Group (baseline)
    


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




## Security (Current State)

A baseline Network Security Group is applied at the subnet level
Rules are intentionally minimal (“security‑lite”)
Deeper security hardening will be layered in later phases