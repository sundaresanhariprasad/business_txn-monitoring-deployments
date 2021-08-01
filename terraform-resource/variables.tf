variable "project" {
  description = "The Google Cloud Platform project ID to target."
  default     = "hariprasad-sundaresan-308010"
}

variable "cluster_name" {
  description = "Name of the GKE cluster"
  default     = "business-transaction-monitoring"
}

variable "initial_node_count" {
  description = "Default amount of nodes per zone that will be launched"
  default     = 1
}

variable "primary_region" {
  description = "The primary region provision resources within."
  default     = "europe-west1"
}

variable "primary_zone" {
  description = "The primary zone to provision resources within."
  default     = "europe-west1-c"
}


variable "machine_type" {
  description = "Machine type for the kubernetes nodes"
  default     = "custom-10-30720"
}

variable "preemptible_vm" {
  description = "Allocate preemptible VMs type"
  default     = "true"
}


variable "network" {
  default = "btm-network"
}

variable "subnetwork" {
  default = "btm-sub-network"
}

variable "gke-service-account" {
  default = "btm-gke-service-account"
}

variable "gke-service-account-display-name" {
  default = "btm-gke-service-account"
}