// Output VPC
output "vpc_id" {
  description = "The ID of the VPC."
  value       = alicloud_cs_managed_kubernetes.k8s[0].vpc_id
}

output "vswitch_ids" {
  description = "List ID of the VSwitches."
  value       = [alicloud_cs_managed_kubernetes.k8s.*.vswitch_ids]
}

//output "nat_gateway_id" {
//  value = alicloud_cs_managed_kubernetes.k8s[0].nat
//}

//Output SLS
output "sls_project_name" {
  value = alicloud_log_project.log.name
}

// Output kubernetes resource
output "cluster_id" {
  description = "ID of the kunernetes cluster."
  value       = alicloud_cs_managed_kubernetes.k8s.*.id
}

output "security_group_id" {
  description = "ID of the Security Group used to deploy kubernetes cluster."
  value       = alicloud_cs_managed_kubernetes.k8s[0].security_group_id
}

output "cluster_nodes" {
  description = "List nodes of cluster."
  value       = alicloud_cs_managed_kubernetes.k8s.*.worker_nodes
}