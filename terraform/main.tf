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

provider "google" {
  project     = "ref-cd"
  region      = "us-central1"
  zone        = "us-central1-c"
}

resource "google_pubsub_topic" "example" {
  name = "example-topic"

  labels = {
    foo = "bar"
  }
}