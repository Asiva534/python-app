resource "google_cloud_run_v2_service" "demo" {

    name = "demo-service"

    location = var.region

    template {

        containers {
            image = var.image
        }
    }
}