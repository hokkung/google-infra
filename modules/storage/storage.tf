resource "google_storage_bucket" "analytics_bucket" {
  name          = "${var.project_id}-${var.analytics_bucket_name}"
  location      = "ASIA"
  storage_class = "STANDARD"

  versioning {
    enabled = true
  }
}
