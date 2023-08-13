terraform {
  required_providers {
    kind = {
      source = "tehcyx/kind"
    }
  }
}

provider "kind" {}

resource "kind_cluster" "new" {
  name = "new"
  node_image = "kindest/node:v1.27.0"
  wait_for_ready = true
    
    kind_config {
      kind = "Cluster"
      api_version = "kind.x-k8s.io/v1alpha4"

      node {
        role = "control-plane"
      }

      node {
        role = "worker"
      }
      
      node {
        role = "worker"
      }
    }
}
