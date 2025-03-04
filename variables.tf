# variables.tf

variable "tfe_hostname" {
  description = "The hostname of the Terraform Cloud instance"
  type        = string
  default     = "app.terraform.io"
}

variable "tfe_token" {
  description = "The API token for Terraform Cloud"
  type        = string
  default     = "rWTVv2LEzhTPNQ.atlasv1.jdKEH8FVBNIV4qU048t67echL4Brs6MWnL92WpBL5wceqmYRCrpxrim9w7yfa3zw8lk"
}

variable "organization" {
  description = "The Terraform Cloud organization name"
  type        = string
  default     = "Dragon_Land"
}

variable "oauth_token" {
  description = "The OAuth token for GitHub integration"
  type        = string
  default     = "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"
}

variable "repo_identifier" {
  description = "The GitHub repository identifier"
  type        = string
  default     = "marinai2024/hashicorptask"
}

variable "workspace_names" {
  description = "The names of the workspaces"
  type        = list(string)
  default     = ["parent2-ws", "cli12-ws", "cli22-ws", "cli32-ws"]
}

variable "queue_all_runs" {
  description = "Whether to queue all runs for workspaces"
  type        = bool
  default     = false
}

variable "variable_set_name" {
  description = "The name of the variable set"
  type        = string
  default     = "Varset_task2"
}

variable "variable_set_description" {
  description = "The description of the variable set"
  type        = string
  default     = "Varset for HashiCorp Interview"
}

variable "dragon_variable_key" {
  description = "The key for the dragon variable"
  type        = string
  default     = "dragon_variable"
}

variable "dragon_variable_value" {
  description = "The value for the dragon variable"
  type        = string
  default     = "my_fire_breathing_dragon"
}

variable "kraken_variable_key" {
  description = "The key for the kraken variable"
  type        = string
  default     = "kraken_variable"
}

variable "kraken_variable_value" {
  description = "The value for the kraken variable"
  type        = string
  default     = "my_sea_monster"
}
 
