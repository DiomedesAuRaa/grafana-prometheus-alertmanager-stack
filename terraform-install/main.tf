terraform {
  required_version = ">= 1.3.0"

  backend "s3" {
    bucket = "my-terraform-state-bucket"
    key    = "monitoring/terraform.tfstate"
    region = "us-east-1"
  }
}

provider "kubernetes" {
  config_path = "~/.kube/config"
}

provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"
  }
}
