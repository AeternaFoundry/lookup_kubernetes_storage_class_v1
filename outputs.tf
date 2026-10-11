output "storage_class_v1_lookup_id" {
  description = "Map of id values across all storage_class_v1_lookup, keyed the same as var.storage_class_v1_lookup except keys with no id are omitted"
  value       = { for k, v in data.kubernetes_storage_class_v1.storage_class_v1_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "storage_class_v1_lookup_allow_volume_expansion" {
  description = "Map of allow_volume_expansion values across all storage_class_v1_lookup, keyed the same as var.storage_class_v1_lookup except keys with no allow_volume_expansion are omitted"
  value       = { for k, v in data.kubernetes_storage_class_v1.storage_class_v1_lookup : k => v.allow_volume_expansion if v.allow_volume_expansion != null }
}
output "storage_class_v1_lookup_allowed_topologies" {
  description = "Map of allowed_topologies values across all storage_class_v1_lookup, keyed the same as var.storage_class_v1_lookup except keys with no allowed_topologies are omitted"
  value       = { for k, v in data.kubernetes_storage_class_v1.storage_class_v1_lookup : k => one(v.allowed_topologies) if v.allowed_topologies != null && length(v.allowed_topologies) > 0 }
}
output "storage_class_v1_lookup_metadata" {
  description = "Map of metadata values across all storage_class_v1_lookup, keyed the same as var.storage_class_v1_lookup except keys with no metadata are omitted"
  value       = { for k, v in data.kubernetes_storage_class_v1.storage_class_v1_lookup : k => one(v.metadata) if v.metadata != null && length(v.metadata) > 0 }
}
output "storage_class_v1_lookup_mount_options" {
  description = "Map of mount_options values across all storage_class_v1_lookup, keyed the same as var.storage_class_v1_lookup except keys with no mount_options are omitted"
  value       = { for k, v in data.kubernetes_storage_class_v1.storage_class_v1_lookup : k => v.mount_options if v.mount_options != null && length(v.mount_options) > 0 }
}
output "storage_class_v1_lookup_parameters" {
  description = "Map of parameters values across all storage_class_v1_lookup, keyed the same as var.storage_class_v1_lookup except keys with no parameters are omitted"
  value       = { for k, v in data.kubernetes_storage_class_v1.storage_class_v1_lookup : k => v.parameters if v.parameters != null && length(v.parameters) > 0 }
}
output "storage_class_v1_lookup_reclaim_policy" {
  description = "Map of reclaim_policy values across all storage_class_v1_lookup, keyed the same as var.storage_class_v1_lookup except keys with no reclaim_policy are omitted"
  value       = { for k, v in data.kubernetes_storage_class_v1.storage_class_v1_lookup : k => v.reclaim_policy if v.reclaim_policy != null && length(v.reclaim_policy) > 0 }
}
output "storage_class_v1_lookup_storage_provisioner" {
  description = "Map of storage_provisioner values across all storage_class_v1_lookup, keyed the same as var.storage_class_v1_lookup except keys with no storage_provisioner are omitted"
  value       = { for k, v in data.kubernetes_storage_class_v1.storage_class_v1_lookup : k => v.storage_provisioner if v.storage_provisioner != null && length(v.storage_provisioner) > 0 }
}
output "storage_class_v1_lookup_volume_binding_mode" {
  description = "Map of volume_binding_mode values across all storage_class_v1_lookup, keyed the same as var.storage_class_v1_lookup except keys with no volume_binding_mode are omitted"
  value       = { for k, v in data.kubernetes_storage_class_v1.storage_class_v1_lookup : k => v.volume_binding_mode if v.volume_binding_mode != null && length(v.volume_binding_mode) > 0 }
}

