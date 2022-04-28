# Three tier architecture on Azure using Terraform


## Three-tier architecture
Three-tier architecture is a well-established software application architecture that organizes applications into three logical and physical computing tiers: the presentation tier, or user interface; the application tier, where data is processed; and the data tier, where the data associated with the application is stored and managed.

## Terraform Installation

* [Terraform](https://www.terraform.io/downloads)



## Architecture

* One vnet tied in 3 subnets
* Each subnet have one vm
* First virtual machine -> allow inbound traffic from internet only
* Second virtual machine -> entertain traffic from first virtual machine only and can reply the same virtual machine again
* App can connect to database and database can connect to app but database cannot connect to web

Keep main and variable files different for each component

## 
[Authenticating using Azure CLI](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/guides/azure_cli)

We can use this method authencate to azure before we start work on terraform script. Due to time constraint I have not implemeted this in my script.


## Terraform Modules

A module is a container for multiple resources that are used together. Modules can be used to create lightweight abstractions, so that you can describe your infrastructure in terms of its architecture, rather than directly in terms of physical objects.

For the case, have created and used five modules:

* rg - creating resourcegroup
* vms - creating availability sets, network interfaces and virtual machines
* database - creating database server and database
* network - creating azure virtual network and required subnets
* securitygroup - creating network security group, setting desired security rules and associating them to subnets

All the stacks are placed in the modules folder and the variable are stored under terraform.tfvars

To run the code you need to append the variables in the terraform.tfvars

Each module consists minimum two files: main.tf, vars.tf

resourcegroup and networking modules consists of one extra file named output.tf

## How to use this code

### Following are the steps to be followed to run the terrafrom script

### terraform init

used to initialize a working directory containing Terraform configuration files

### terraform plan

used to create an execution plan

### terraform validate

validates the configuration files in a directory, referring only to the configuration and not accessing any remote services such as remote state, provider APIs, etc

### terraform apply



used to apply the changes required to reach the desired state of the configuration

# Azure Cache for Redis
Caching is a mechanism to store frequently accessed data in a data store temporarily and retrieve this data for subsequent requests instead of extracting it from the original data source. This process improves the performance and availability of an application. Reading data from the database may be slower if it needs to execute complex queries.


# Note:
We can use the cache for Database. [Caching](https://azure.microsoft.com/en-in/services/cache/#overview) Due to limited time, I am unable to put all these techniques in code. However, I am aware on these best practices.

