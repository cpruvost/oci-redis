output "redis_cluster_name" {
  value =  "${lookup(data.oci_redis_redis_cluster.test_redis_cluster,"display_name")}"
}

output "redis_primary_endpoint" {
  value =  "${lookup(data.oci_redis_redis_cluster.test_redis_cluster,"primary_endpoint_ip_address")}"
}

output "redis_replicas_endpoint" {
  value =  "${lookup(data.oci_redis_redis_cluster.test_redis_cluster,"replicas_endpoint_ip_address")}"
}