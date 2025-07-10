variable "project_id" {
  type = string
}

variable "region" {
  type    = string
  default = "asia-southeast2"

}

variable "zone" {
  type    = string
  default = "asia-southeast2-a"
}
variable "devops_project_id" {
  type = string

}
variable "devops_service_account" {
  type = string
}

variable "cloudbuildv2_github_conn" {
  type = string

}
