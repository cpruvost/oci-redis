# Terraform Automation on Oracle Cloud : Create a Redis Cluster on OCI

This project has been designed to run with Terraform outside Oracle OCI Stacks Resource Manager. Nevertheless you can use it with OCI Stacks Resource Manager but you have to comment some security variables in provider.tf, variables.tf, and main.tf (Just read the comments in the file to understand how to update these 3 files).

## Prerequisites

Before Starting you need to create a VCN in OCI with a private subnet or a public subnet and you need to open port 3306 and port 33060 in the subnet Security list to be able to connect to the Redis Cluster. Note that even if you create a Redis Cluster in a public Subnet you will have only a private Endpoint to connect to it so it means you cannot connect to the Redis Cluster from outside OCI (Internet for ex).

## Create the Stack with Terraform apply

You can look at the variables and see : 
- Some of the variables have default values than can be updated by yourself or not.
- Some other variables have no default value and are mandatory so you must know them.
- Look an example for variables at env-vars-ex.ps1

After setting variables you can do a terraform plan, apply, destroy,..
