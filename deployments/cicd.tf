
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
