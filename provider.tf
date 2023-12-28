provider "google" {
  credentials = file("kms-sa.json")
  project     = "extreme-quasar-399203"
  region      = "us-central1"
  zone        = "us-central1-c"
}
