

resource "random_password" "admin" {
  length           = var.password_length
  special          = true
  upper            = true
  lower            = true
  numeric           = true
}


variable "password_length" {
  description = "Length of the random password"
  type        = number
  default     = 16
}

output "generated_password" {
  value     = random_password.admin.result
  sensitive = true
}

