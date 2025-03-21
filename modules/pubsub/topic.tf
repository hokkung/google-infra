resource "google_pubsub_topic" "events" {
  name = var.event_topic_name
}
