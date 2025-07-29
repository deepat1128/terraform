resource "random_string" "random" {
  length = var.length 
  special          = true
  override_special = "/@£$"
}


variable "length" {
  description = "Length for random password"
  type        = number
  default     = 16  # Optional fallback
}

