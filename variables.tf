variable "storage_class_v1_lookup" {
  description = <<EOT
Map of storage_class_v1_lookup, attributes below
Required:
    - metadata (block):
        - annotations (optional)
        - labels (optional)
        - name (optional)
Optional:
    - allow_volume_expansion
    - mount_options
    - parameters
    - reclaim_policy
    - volume_binding_mode
    - allowed_topologies (block):
        - match_label_expressions (optional, block):
            - key (optional)
            - values (optional)
EOT

  type = map(object({
    allow_volume_expansion = optional(bool)
    mount_options          = optional(set(string))
    parameters             = optional(map(string))
    reclaim_policy         = optional(string)
    volume_binding_mode    = optional(string)
    metadata = object({
      annotations = optional(map(string))
      labels      = optional(map(string))
      name        = optional(string)
    })
    allowed_topologies = optional(object({
      match_label_expressions = optional(list(object({
        key    = optional(string)
        values = optional(set(string))
      })))
    }))
  }))
}

