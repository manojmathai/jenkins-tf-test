provider "google" {
 credentials = "${file("adc.json")}"
 project     = "${var.project-name}" 
}

resource "google_compute_instance" "default" {
  name        = "compute-instance-test"
  description = "Test compute instance."
  machine_type = "n1-standard-1"  

  labels = {
    application = "app1", 
   
  }
