# main.tf

provider "tfe" {
  hostname = var.tfe_hostname
  token    = var.tfe_token
}

resource "tfe_project" "marina_project_2" {
  organization = var.organization
  name         = "Marina_Project_2"
}

resource "tfe_oauth_client" "test" {
  organization     = var.organization
  api_url          = "https://api.github.com"
  http_url         = "https://github.com"
  oauth_token      = var.oauth_token
  service_provider = "github"
}

resource "tfe_workspace" "parent2" {
  name                 = var.workspace_names[0]
  organization         = var.organization
  queue_all_runs       = var.queue_all_runs
  project_id           = tfe_project.marina_project_2.id
  vcs_repo {
    branch             = "main"
    identifier         = var.repo_identifier
    oauth_token_id     = tfe_oauth_client.test.oauth_token_id
  }
}

resource "tfe_workspace" "cli_12" {
  name                 = var.workspace_names[1]
  organization         = var.organization
  queue_all_runs       = var.queue_all_runs
  project_id           = tfe_project.marina_project_2.id
}

resource "tfe_workspace" "cli_22" {
  name                 = var.workspace_names[2]
  organization         = var.organization
  queue_all_runs       = var.queue_all_runs
  project_id           = tfe_project.marina_project_2.id
}

resource "tfe_workspace" "cli_32" {
  name                 = var.workspace_names[3]
  organization         = var.organization
  queue_all_runs       = var.queue_all_runs
  project_id           = tfe_project.marina_project_2.id
}

resource "tfe_variable_set" "Variable_Set" {
  name          = var.variable_set_name
  description   = var.variable_set_description
  organization  = var.organization
}

resource "tfe_variable" "Variable_Dragon" {
  key             = var.dragon_variable_key
  value           = var.dragon_variable_value
  category        = "terraform"
  description     = "My favourite dragon"
  variable_set_id = tfe_variable_set.Variable_Set.id
}

resource "tfe_variable" "Variable_Kraken" {
  key             = var.kraken_variable_key
  value           = var.kraken_variable_value
  category        = "env"
  description     = "My favourite kraken"
  variable_set_id = tfe_variable_set.Variable_Set.id
}

resource "tfe_workspace_variable_set" "ws_cli12" {
  variable_set_id = tfe_variable_set.Variable_Set.id
  workspace_id    = tfe_workspace.cli_12.id
}

resource "tfe_workspace_variable_set" "ws_cli22" {
  variable_set_id = tfe_variable_set.Variable_Set.id
  workspace_id    = tfe_workspace.cli_22.id
}

resource "tfe_workspace_variable_set" "ws_cli32" {
  variable_set_id = tfe_variable_set.Variable_Set.id
  workspace_id    = tfe_workspace.cli_32.id
}
 
