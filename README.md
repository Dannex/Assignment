# Assignment

Task1:

**Overview**
This documentation provides an overview and guidance for using an Ansible playbook designed to set up a .NET application along with a PostgreSQL database using Docker and Docker Compose. The playbook is structured into two roles: docker and app. The docker role is responsible for installing Docker and necessary packages, while the app role is responsible for running a Docker Compose file that sets up the .NET application and the PostgreSQL database.

**Prerequisites**
Before using the playbook, ensure that Ansible is installed and configured on the machine that will be running the playbook. The user executing the playbook should have sufficient privileges to install packages, manage services, and perform all required tasks.

**Roles Overview**
Docker Role
Location: roles/docker/tasks/main.yml

The docker role takes care of installing Docker on the target machine(s). This includes:

Installing the necessary packages to support Docker.
Adding the Docker repository to the package manager if required.
Installing the Docker engine and Docker Compose.
Starting the Docker service and enabling it to start on boot.

App Role
Location: roles/app/tasks/main.yml

The app role is responsible for deploying the .NET application and the PostgreSQL database using Docker Compose. This role includes:

Copying the Docker Compose file to the target machine.
Running the Docker Compose command to bring up the application and database services.
Usage

Run the playbook with the following command:  "sudo ansible-playbook playbook.yml -c local -i localhost -K"


Task2:
1. How would you structure your Terraform project if you have multiple environments
and use different cloud providers?

terraform-project/
│
├── README.md
│
├── providers.tf
│
├── test/
│   ├── main.tf
│   ├── variables.tf
│   ├── outputs.tf
│   └── terraform.tfvars
│
└── prod/
    ├── main.tf
    ├── variables.tf
    ├── outputs.tf
    └── terraform.tfvars

I would have something like above sotred in a git repository. One folder for each environment and ahve defined in providers the cloud providers needed: GCP, AWS, AZURE, etc..
