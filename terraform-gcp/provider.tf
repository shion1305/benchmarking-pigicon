provider "google" {
  credentials = file("<YOUR_CREDENTIALS_FILE>.json")
  project     = "<YOUR_PROJECT_ID>"
  region      = "<YOUR_REGION>"
  zone        = "<YOUR_ZONE>"
}

