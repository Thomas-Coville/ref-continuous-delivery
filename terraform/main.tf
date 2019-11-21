# Using multiple workspaces:
terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "tcoville"

    workspaces {
      prefix = "ref-cd-"
    }
  }
}