resource "google_cloud_run_v2_service" "app" {

  name = "demo-app"

  location = var.region

  deletion_protection = false

  template {
    containers {
      image = "asia-south1-docker.pkg.dev/teak-span-504223-e1/demo/demo:latest"
    }
  }
}