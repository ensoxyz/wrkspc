# AUTH0__________________________.
provider "auth0" {
  domain = "<domain>"
  client_id = "<client-id>"
  client_secret = "<client-secret>"
  debug = "<debug>"
}

# AWS____________________________.
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

# Create a VPC
resource "aws_vpc" "example" {
  cidr_block = "10.0.0.0/16"
}


# CLOUDFLARE_____________________.
provider "cloudflare" {
  version = "~> 2.0"
  email   = "${var.cloudflare_email}"
  api_key = "${var.cloudflare_api_key}"
}

# Create a record
resource "cloudflare_record" "www" {
  # ...
}

# Create a page rule
resource "cloudflare_page_rule" "www" {
  # ...
}


# CONSUL_________________________.
provider "consul" {
  address    = "demo.consul.io:80"
  datacenter = "nyc1"
}

# Access a key in Consul
data "consul_keys" "app" {
  key {
    name    = "ami"
    path    = "service/app/launch_ami"
    default = "ami-1234"
  }
}

# Use our variable from Consul
resource "aws_instance" "app" {
  ami = "${consul_keys.app.var.ami}"
}

# DOCKER_________________________.
provider "docker" {
  host = "tcp://127.0.0.1:2376/"
}

# Create a container
resource "docker_container" "foo" {
  image = "${docker_image.ubuntu.latest}"
  name  = "foo"
}

resource "docker_image" "ubuntu" {
  name = "ubuntu:latest"
}

# EXOSCALE________________________.
terraform {
  required_providers {
    exoscale = {
      source  = "exoscale/exoscale"
      version = "0.18.2"
    }
  }
}

provider "exoscale" {
  key = "EXOxxxxxxxxxxxxxxxxxxxxxxxx"
  secret = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
}

# GITHUB_________________________.
provider "github" {
  token = "${var.github_token}"
  owner = "${var.github_owner}"
}

# Add a user to the organization
resource "github_membership" "membership_for_user_x" {
  # ...
}

# GITLAB_________________________.
provider "gitlab" {
    token = "${var.gitlab_token}"
}

# Add a project owned by the user
resource "gitlab_project" "sample_project" {
    name = "example"
}

# Add a hook to the project
resource "gitlab_project_hook" "sample_project_hook" {
    project = "${gitlab_project.sample_project.id}"
    url = "https://example.com/project_hook"
}

# Add a variable to the project
resource "gitlab_project_variable" "sample_project_variable" {
    project = "${gitlab_project.sample_project.id}"
    key = "project_variable_key"
    value = "project_variable_value"
}

# Add a deploy key to the project
resource "gitlab_deploy_key" "sample_deploy_key" {
    project = "${gitlab_project.sample_project.id}"
    title = "terraform example"
    key = "ssh-rsa AAAA..."
}

# Add a group
resource "gitlab_group" "sample_group" {
    name = "example"
    path = "example"
    description = "An example group"
}

# Add a project to the group - example/example
resource "gitlab_project" "sample_group_project" {
    name = "example"
    namespace_id = "${gitlab_group.sample_group.id}"
}

# GOOGLE__________________________.
provider "google" {
  credentials = file("account.json")
  project     = "my-project-id"
  region      = "us-central1"
}

# K8S_____________________________.
provider "kubernetes" {
  config_context = "my-context"
}

resource "kubernetes_namespace" "example" {
  metadata {
    name = "my-first-namespace"
  }
}

# NOMAD___________________________.
provider "nomad" {
  address = "http://nomad.mycompany.com:4646"
  region  = "us-east-2"
}

# Register a job
resource "nomad_job" "monitoring" {
  jobspec = file("${path.module}/jobspec.hcl")
}

# VAULT___________________________.
variable login_approle_role_id {}
variable login_approle_secret_id {}

provider "vault" {
  auth_login {
    path = "auth/approle/login"

    parameters = {
      role_id   = var.login_approle_role_id
      secret_id = var.login_approle_secret_id
    }
  }
}
