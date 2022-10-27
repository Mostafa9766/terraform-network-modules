output "vpc-name" {
    value = google_compute_network.task-vpc
}
output "subnet1-name" {
    value = google_compute_subnetwork.subnet1.name
}

output "subnet2-name" {
    value = google_compute_subnetwork.subnet2.name
}
