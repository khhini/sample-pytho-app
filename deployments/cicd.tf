
#######################################
# Github Repository
#######################################

resource "google_cloudbuildv2_repository" "sample_app" {
  location          = "asia-east1"
  project           = var.devops_project_id
  name              = "sample-pytho-app"
  parent_connection = var.cloudbuildv2_github_conn
  remote_uri        = "https://github.com/khhini/sample-pytho-app.git"
}

resource "google_cloudbuild_trigger" "sample_app" {
  name            = "sample-app-prd"
  location        = "asia-east1"
  project         = var.devops_project_id
  service_account = "projects/${var.devops_project_id}/serviceAccounts/${var.devops_service_account}"

  repository_event_config {
    repository = google_cloudbuildv2_repository.sample_app.id
    push {
      branch = "main.*"
    }
  }

  filename = "deployments/build/cloudbuild.yaml"

  include_build_logs = "INCLUDE_BUILD_LOGS_WITH_STATUS"
}
