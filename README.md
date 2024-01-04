# spokeandhub-terraform
This repository will be used to build Terraform infrastructure for spoke and hub orchestration.

## HUB AND SPOKE ORCHESTRATION TERRAFORM 


# Prerequisites:
1.	Install Terraform and Azure CLI.
2.	Create Microsoft Azure Free account.
3.	Register an application for authentication purpose.
4.	Generate Client secret.
5.	Give contributor role for application at subscription level for authorization.
6.	Create resource group and storage account to store terraform state file in tfstate blob.
7.	Write configuration files.
# Steps to achieve (Azure and AWS)
1.	Create subscription.
2.	Create management group.
3.	Assign azure policy to management group.
4.	Assign subscription to management group.
5.	Create resource groups.
# Note: We don’t need any failure message if the resource already exists because terraform has inbuilt function to check the infrastructure deployment current state and act accordingly. It will check whether resource is present or not and if already exists it performs nothing.

