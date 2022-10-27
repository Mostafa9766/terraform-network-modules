resource "google_compute_router" "router" {
  name    = "nat-router"
  region  = google_compute_subnetwork.subnet1.region
  network = google_compute_network.task-vpc.id

}
resource "google_compute_router_nat" "nat-gw" {
  name                               = var.nat-name
  router                             = google_compute_router.router.name
  region                             = google_compute_router.router.region
  nat_ip_allocate_option             = "AUTO_ONLY"
  #source_subnetwork_ip_ranges_to_nat = "ALL_SUBNETWORKS_ALL_IP_RANGES"
  source_subnetwork_ip_ranges_to_nat = "LIST_OF_SUBNETWORKS"
  subnetwork {
    name                    = google_compute_subnetwork.subnet2.id
    source_ip_ranges_to_nat = ["ALL_IP_RANGES"]
  }
}
}
