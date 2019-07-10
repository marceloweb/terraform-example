provider "google" {
  region = "us-central1"
  zone    = "us-central1-c"
  project = "revolution-244418"
  credentials = "revolution-04876f58bf04.json"
}
resource "google_compute_instance" "vm_instance" {
  name         = "terraform-instance"
  machine_type = "f1-micro"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    # A default network is created for all GCP projects
    network       = "default"
    access_config {
    }
  }
}
