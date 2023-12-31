provider "oci" {
  ### These information are needed only outside of OCI Terraform Stack Manager
  tenancy_ocid     = var.tenancy_ocid
  user_ocid        = var.user_ocid
  fingerprint      = var.fingerprint
  private_key_path = var.private_key_path
  ### Region Information is always needed
  region           = var.region
}
