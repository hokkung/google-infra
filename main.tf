terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 6.26.0"
    }
  }
}

module "pubsub" {
  source            = "./modules/pubsub"
  click_subscription_name = "click-events-sub"
  event_topic_name =  "events-topic"
}

module "could_storage" {
  source            = "./modules/storage"
  analytics_bucket_name = "analytics-bucket-1"
  project_id = local.project_id
}