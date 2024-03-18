# Assignment

Task1:
Create Ansible playbooks and roles to create locally or remotely a docker stack using
docker-compose that runs a .net core application and a database (Postgresql or MySQL)

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
1. How would you structure your Terraform project if you have multiple environmentsand use different cloud providers?



terraform-project/README.md
terraform-project/providers.tf
terraform-project/test/main.tf
terraform-project/test/variables.tf
terraform-project/prod/
terraform-project/prod/main.tf
terraform-project/prod/variables.tf

I would have something like above sotred in a git repository. One folder for each environment and ahve defined in providers the cloud providers needed: GCP, AWS, AZURE, etc..


Task3:
If you have multiple Ubuntu prod instances, How would you monitor them? What would be your monitoring strategy?

I would probably install prometheus client on every ubuntu instance on bootstrap (userdata) and use a separate dedicated instance for Prometheus. I would install also Grafana on separate instance and use Prometheus as data source.
Create dashboards in grafana with defferent metrics like CPU ussage, memory usage, disk usage, etc... 
Create alerts in Grafana for Warnings and Critical with threshold over 70%  for Warning  and 90% for Critical.
Use Cloudwatch for the health status and alerts if Grafna instance is healthy. 
