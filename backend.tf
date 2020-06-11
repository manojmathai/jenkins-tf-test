terraform {
  backend "gcs" {
    project = "host-project-mm"
    bucket  = "mm-tf-statefiles"
    prefix  = "terraform/state"
    credentials = "./creds/serviceaccount.json"
  }
}
