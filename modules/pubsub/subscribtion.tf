resource "google_pubsub_subscription" "click_events_sub" {
    name  = var.click_subscription_name
    topic = google_pubsub_topic.events.id
    ack_deadline_seconds = 10

    filter = <<EOF
        attributes.event_type = "CLICK" AND attributes.item_type = "AD"
    EOF
    
    expiration_policy {
        ttl = ""
    }
}
