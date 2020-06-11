provider "google" {
 credentials = "./creds/serviceaccount.json"
 project     = "host-project-mm" 
}

resource "google_compute_instance" "inst-default" {
  name        = "compute-instance-test"
  description = "Test compute instance."
  machine_type = "n1-standard-1"  
  zone         = "us-central1-a"
  labels = {
    application = "app1"
   }
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }
  network_interface {
    network = "default"
  }
}
