### This information are needed only outside of OCI Terraform Stack Manager
variable "tenancy_ocid" {
    description = "The OCI Tenancy ocid"
    type        = string
}

variable "user_ocid" {
    description = "The OCI User ocid"
    type        = string
}

variable "fingerprint" {
    description = "The Fingerprint of the OCI API Key"
    type        = string
}

variable "private_key_path" {
    description = "The Path of the OCI API Key"
    type        = string
}

### This information is always needed
variable "region" {
    description = "The OCI region"
    type        = string
}

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