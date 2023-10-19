
variable "compartment_ocid" {
    description = "The OCI Compartment ocid"
    type        = string
}

variable "private_subnet_ocid" {
    description = "The OCI Private Subnet ocid"
    type        = string
}

variable "public_subnet_ocid" {
    description = "The OCI Public Subnet ocid"
    type        = string
}

variable "redis_cluster_name" {
    description = "The Redis Cluster Name"
    type        = string
    default     = "REDIS_CLUSTER_NAME"
}

variable "redis_cluster_node_count" {
    description = "The Redis Cluster Node Count"
    type        = number
    default     = 1
}

variable "redis_cluster_node_memory_in_gbs" {
    description = "The Redis Cluster Node Memomry in GB"
    type        = number
    default     = 2
}

variable "redis_cluster_software_version" {
    description = "The Redis Cluster Software Version"
    type        = string
    default     = "V7_0_5"
}

variable "redis_cluster_state" {
    description = "The Redis Cluster State"
    type        = string
    default     = "ACTIVE"
}

# variable "redis_cluster_freeform_tags" {
#   default = { "bar-key" = "value" }
# }

resource "oci_redis_redis_cluster" "test_redis_cluster" {
  #Required
  compartment_id     = var.compartment_ocid
  display_name       = var.redis_cluster_name
  node_count         = var.redis_cluster_node_count
  node_memory_in_gbs = var.redis_cluster_node_memory_in_gbs
  software_version   = var.redis_cluster_software_version
  #choose private or public subnet
  subnet_id          = var.private_subnet_ocid
  #subnet_id          = var.public_subnet_ocid

  #Optional
  //  defined_tags  = map(oci_identity_tag_namespace.tag-namespace1.name.oci_identity_tag.tag1.name, var.redis_cluster_defined_tags_value)
  //freeform_tags = var.redis_cluster_freeform_tags
}

data "oci_redis_redis_cluster" "test_redis_cluster" {
    #Required
    redis_cluster_id = oci_redis_redis_cluster.test_redis_cluster.id
}