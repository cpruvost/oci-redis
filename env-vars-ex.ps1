### Authentication details
$env:TF_VAR_tenancy_ocid="ocid1.tenancy.oc1..*******************"
$env:TF_VAR_user_ocid="ocid1.user.oc1..***************************"
$env:TF_VAR_fingerprint="**********************"
$env:TF_VAR_private_key_path="************************.pem"

### Compartment
$env:TF_VAR_compartment_ocid="ocid1.compartment.oc1..**************************"

### Region
$env:TF_VAR_region="eu-frankfurt-1"

### Network
$env:TF_VAR_private_subnet_ocid="ocid1.subnet.oc1.eu-frankfurt-1.****************************"
$env:TF_VAR_public_subnet_ocid="ocid1.subnet.oc1.eu-frankfurt-1.*****************************"

### Availability Domain
$env:TF_VAR_availability_domain="Vihs:EU-FRANKFURT-1-AD-1"

### Redis Cluster
$env:TF_VAR_redis_cluster_name="MyRedisClusterIAS"
$env:TF_VAR_redis_cluster_node_count="2"
$env:TF_VAR_redis_cluster_node_memory_in_gbs="2"
$env:TF_VAR_redis_cluster_software_version="V7_0_5"
$env:TF_VAR_redis_cluster_state="ACTIVE"


