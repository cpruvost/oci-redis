output "redis_cluster_name" {
  value =  module.redis.redis_cluster_name
}

output "redis_primary_endpoint" {
  value =  module.redis.redis_primary_endpoint
}

output "redis_replicas_endpoint" {
  value =  module.redis.redis_replicas_endpoint
}