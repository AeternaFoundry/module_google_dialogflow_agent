resource "google_dialogflow_agent" "dialogflow_agents" {
  for_each = var.dialogflow_agents

  default_language_code    = each.value.default_language_code
  display_name             = each.value.display_name
  time_zone                = each.value.time_zone
  api_version              = each.value.api_version
  avatar_uri               = each.value.avatar_uri
  classification_threshold = each.value.classification_threshold
  deletion_policy          = each.value.deletion_policy
  description              = each.value.description
  enable_logging           = each.value.enable_logging
  match_mode               = each.value.match_mode
  project                  = each.value.project
  supported_language_codes = each.value.supported_language_codes
  tier                     = each.value.tier

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

