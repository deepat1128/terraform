resource "random_password" "password" {
  length           = var.numbytes
  special          = var.specialchars
  override_special = var.notchar
}
variable numbytes {
	type = number
	default = 8
	}
variable specialchars {
	type = bool
	default = false
	}
variable notchar {
	type = string
	default = "!#$%&*()-_=+[]{}<>:?"
	}
 output passwdout {
	value = random_password.password.result
	sensitive = true
}  


