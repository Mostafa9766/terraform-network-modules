resource "google_compute_subnetwork" "subnet1" {
  name          = var.subnet1
  ip_cidr_range = var.cidr-1
  region        = var.region
  network       = google_compute_network.task-vpc.id
}
resource "google_compute_subnetwork" "subnet2" {
  name          = var.subnet2-name
  ip_cidr_range = var.cidr-2
  region        = var.region
  network       = google_compute_network.task-vpc.id
}
