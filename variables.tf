variable "dialogflow_agents" {
  description = <<EOT
Map of dialogflow_agents, attributes below
Required:
    - default_language_code
    - display_name
    - time_zone
Optional:
    - api_version
    - avatar_uri
    - classification_threshold
    - deletion_policy
    - description
    - enable_logging
    - match_mode
    - project
    - supported_language_codes
    - tier
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    default_language_code    = string
    display_name             = string
    time_zone                = string
    api_version              = optional(string)
    avatar_uri               = optional(string)
    classification_threshold = optional(number)
    deletion_policy          = optional(string)
    description              = optional(string)
    enable_logging           = optional(bool)
    match_mode               = optional(string)
    project                  = optional(string)
    supported_language_codes = optional(list(string))
    tier                     = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.dialogflow_agents : (
        v.description == null || (length(v.description) >= 0 && length(v.description) <= 500)
      )
    ])
    error_message = "must be between 0 and 500 characters"
  }
  # Note: 3 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

