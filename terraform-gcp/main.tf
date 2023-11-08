resource "google_compute_instance" "server-1" {
  name         = "server-1"
  machine_type = "e2-standard-2"
  zone         = "asia-northeast1-b"

  boot_disk {
    initialize_params {
      image = "ubuntu-2310-mantic-amd64-v20231031"
    }
  }

  network_interface {
    network = google_compute_network.default-nw.name
  }

  metadata_startup_script = <<EOF
#!/bin/bash
sudo apt-get update
EOF
}

resource "google_compute_instance" "benchmarker" {
  name         = "benchmarker"
  machine_type = "e2-standard-2"
  zone         = "asia-northeast1-b"

  boot_disk {
    initialize_params {
      image = "ubuntu-2310-mantic-amd64-v20231031"
    }
  }

  network_interface {
    network = google_compute_network.default-nw.name
  }
}

data "google_compute_network" "default-nw" {
  name = "nw-northeast1"
}
