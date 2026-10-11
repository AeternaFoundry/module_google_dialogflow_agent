output "dialogflow_agents_id" {
  description = "Map of id values across all dialogflow_agents, keyed the same as var.dialogflow_agents except keys with no id are omitted"
  value       = { for k, v in google_dialogflow_agent.dialogflow_agents : k => v.id if v.id != null && length(v.id) > 0 }
}
output "dialogflow_agents_api_version" {
  description = "Map of api_version values across all dialogflow_agents, keyed the same as var.dialogflow_agents except keys with no api_version are omitted"
  value       = { for k, v in google_dialogflow_agent.dialogflow_agents : k => v.api_version if v.api_version != null && length(v.api_version) > 0 }
}
output "dialogflow_agents_avatar_uri" {
  description = "Map of avatar_uri values across all dialogflow_agents, keyed the same as var.dialogflow_agents except keys with no avatar_uri are omitted"
  value       = { for k, v in google_dialogflow_agent.dialogflow_agents : k => v.avatar_uri if v.avatar_uri != null && length(v.avatar_uri) > 0 }
}
output "dialogflow_agents_avatar_uri_backend" {
  description = "Map of avatar_uri_backend values across all dialogflow_agents, keyed the same as var.dialogflow_agents except keys with no avatar_uri_backend are omitted"
  value       = { for k, v in google_dialogflow_agent.dialogflow_agents : k => v.avatar_uri_backend if v.avatar_uri_backend != null && length(v.avatar_uri_backend) > 0 }
}
output "dialogflow_agents_classification_threshold" {
  description = "Map of classification_threshold values across all dialogflow_agents, keyed the same as var.dialogflow_agents except keys with no classification_threshold are omitted"
  value       = { for k, v in google_dialogflow_agent.dialogflow_agents : k => v.classification_threshold if v.classification_threshold != null }
}
output "dialogflow_agents_default_language_code" {
  description = "Map of default_language_code values across all dialogflow_agents, keyed the same as var.dialogflow_agents except keys with no default_language_code are omitted"
  value       = { for k, v in google_dialogflow_agent.dialogflow_agents : k => v.default_language_code if v.default_language_code != null && length(v.default_language_code) > 0 }
}
output "dialogflow_agents_deletion_policy" {
  description = "Map of deletion_policy values across all dialogflow_agents, keyed the same as var.dialogflow_agents except keys with no deletion_policy are omitted"
  value       = { for k, v in google_dialogflow_agent.dialogflow_agents : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "dialogflow_agents_description" {
  description = "Map of description values across all dialogflow_agents, keyed the same as var.dialogflow_agents except keys with no description are omitted"
  value       = { for k, v in google_dialogflow_agent.dialogflow_agents : k => v.description if v.description != null && length(v.description) > 0 }
}
output "dialogflow_agents_display_name" {
  description = "Map of display_name values across all dialogflow_agents, keyed the same as var.dialogflow_agents except keys with no display_name are omitted"
  value       = { for k, v in google_dialogflow_agent.dialogflow_agents : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "dialogflow_agents_enable_logging" {
  description = "Map of enable_logging values across all dialogflow_agents, keyed the same as var.dialogflow_agents except keys with no enable_logging are omitted"
  value       = { for k, v in google_dialogflow_agent.dialogflow_agents : k => v.enable_logging if v.enable_logging != null }
}
output "dialogflow_agents_match_mode" {
  description = "Map of match_mode values across all dialogflow_agents, keyed the same as var.dialogflow_agents except keys with no match_mode are omitted"
  value       = { for k, v in google_dialogflow_agent.dialogflow_agents : k => v.match_mode if v.match_mode != null && length(v.match_mode) > 0 }
}
output "dialogflow_agents_project" {
  description = "Map of project values across all dialogflow_agents, keyed the same as var.dialogflow_agents except keys with no project are omitted"
  value       = { for k, v in google_dialogflow_agent.dialogflow_agents : k => v.project if v.project != null && length(v.project) > 0 }
}
output "dialogflow_agents_supported_language_codes" {
  description = "Map of supported_language_codes values across all dialogflow_agents, keyed the same as var.dialogflow_agents except keys with no supported_language_codes are omitted"
  value       = { for k, v in google_dialogflow_agent.dialogflow_agents : k => v.supported_language_codes if v.supported_language_codes != null && length(v.supported_language_codes) > 0 }
}
output "dialogflow_agents_tier" {
  description = "Map of tier values across all dialogflow_agents, keyed the same as var.dialogflow_agents except keys with no tier are omitted"
  value       = { for k, v in google_dialogflow_agent.dialogflow_agents : k => v.tier if v.tier != null && length(v.tier) > 0 }
}
output "dialogflow_agents_time_zone" {
  description = "Map of time_zone values across all dialogflow_agents, keyed the same as var.dialogflow_agents except keys with no time_zone are omitted"
  value       = { for k, v in google_dialogflow_agent.dialogflow_agents : k => v.time_zone if v.time_zone != null && length(v.time_zone) > 0 }
}

