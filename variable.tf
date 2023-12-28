variable "project_id" {
  description = "Project id where the keyring will be created."
  type        = string
  default     = "extreme-quasar-399203"
}

# cf https://cloud.google.com/kms/docs/locations
variable "location" {
  description = "Location for the keyring."
  type        = string
  default     = "us-central1"
}

variable "keyring" {
  description = "Keyring name."
  type        = string
  default     = "my-keyring-king"
}
variable "keys" {
  description = "Key names."
  type        = list(string)
  default     = ["my-key-111", "my-key-222", "my-key-333"]
}

variable "prevent_destroy" {
  description = "Set the prevent_destroy lifecycle attribute on keys."
  type        = bool
  default     = false
}

variable "key_destroy_scheduled_duration" {
  description = "Set the period of time that versions of keys spend in the DESTROY_SCHEDULED state before transitioning to DESTROYED."
  type        = string
  default     = null
}

variable "purpose" {
  type        = string
  description = "The immutable purpose of the CryptoKey. Possible values are ENCRYPT_DECRYPT, ASYMMETRIC_SIGN, and ASYMMETRIC_DECRYPT."
  default     = "ENCRYPT_DECRYPT"
}
variable "key_rotation_period" {
  description = "Generate a new key every time this period passes."
  type        = string
  default     = "7776000s"
}
variable "set_owners_for" {
  description = "Name of keys for which owners will be set."
  type        = list(string)
  default     = ["my-key-111", "my-key-222"]
}

variable "owners" {
  description = "List of comma-separated owners for each key declared in set_owners_for."
  type        = list(string)
  default     = ["serviceAccount:kms-sa@extreme-quasar-399203.iam.gserviceaccount.com", "serviceAccount:kms-sa1@extreme-quasar-399203.iam.gserviceaccount.com"]
}

variable "set_encrypters_for" {
  description = "Name of keys for which encrypters will be set."
  type        = list(string)
  default     = ["my-key-111", "my-key-222", "my-key-333"]
}

variable "encrypters" {
  description = "List of comma-separated owners for each key declared in set_encrypters_for."
  type        = list(string)
  default     = ["serviceAccount:kms-sa@extreme-quasar-399203.iam.gserviceaccount.com", "serviceAccount:kms-sa1@extreme-quasar-399203.iam.gserviceaccount.com", "serviceAccount:kms-sa1@extreme-quasar-399203.iam.gserviceaccount.com"]

}

variable "set_decrypters_for" {
  description = "Name of keys for which decrypters will be set."
  type        = list(string)
  default     = ["my-key-111", "my-key-222"]
}

variable "decrypters" {
  description = "List of comma-separated owners for each key declared in set_decrypters_for."
  type        = list(string)
  default     = ["serviceAccount:kms-sa@extreme-quasar-399203.iam.gserviceaccount.com", "serviceAccount:kms-sa1@extreme-quasar-399203.iam.gserviceaccount.com"]
}


# serviceAccount:service-${data.google_project.project.number}@compute-system.iam.gserviceaccount.com"
