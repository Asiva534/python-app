resource "google_artifact_registry_repository" "repo" {

  repository_id = "demo"

  format = "DOCKER"

  location = var.region

}