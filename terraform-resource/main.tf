terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

provider "google" {
  project = "${var.project}"
  region  = "${var.primary_region}"
  credentials = file("../../../keys/terraform-user-gcp.json")
}

resource "google_service_account" "btm-gke-service-account" {
  account_id   = "${var.gke-service-account}"
  display_name = "${var.gke-service-account-display-name}" 
}

resource "google_container_cluster" "cluster" {
  description        = "Busines Transaction Monitoring"
  name               = "${var.cluster_name}"
  location           = "${var.primary_zone}"
  initial_node_count = "${var.initial_node_count}"
  logging_service    = "none"
  monitoring_service = "none"

  node_config {
    preemptible  = "${var.preemptible_vm}"
    machine_type = "${var.machine_type}"
    service_account = google_service_account.btm-gke-service-account.email
  }

  timeouts {
    create = "180m"
    delete = "180m"
    update = "180m"
  }
}