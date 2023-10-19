terraform {
  required_providers {
    oci = {
      version = "~> 5.17.0"
    }
  }

  required_version = "~> 1.3.6"
  #OCI Terraform Stack does not support last version
  #required_version = "~> 1.2.9"
}

module "redis" {
  source  = "./modules/redis"

  compartment_ocid  = var.compartment_ocid
  private_subnet_ocid = var.private_subnet_ocid
  public_subnet_ocid = var.public_subnet_ocid
  redis_cluster_name = var.redis_cluster_name
  redis_cluster_node_count = var.redis_cluster_node_count
  redis_cluster_node_memory_in_gbs = var.redis_cluster_node_memory_in_gbs
  redis_cluster_software_version = var.redis_cluster_software_version
  redis_cluster_state = var.redis_cluster_state
}
