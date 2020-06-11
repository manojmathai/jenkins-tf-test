provider "google" {
 credentials = "./creds/serviceaccount.json"
 project     = "host-project-mm" 
}

resource "google_compute_instance" "inst-default" {
  name        = "compute-instance-test"
  description = "Test compute instance."
  machine_type = "n1-standard-1"  

  labels = {
    application = "app1"
   
  }
}
