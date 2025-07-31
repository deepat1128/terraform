variable "keepers_config" {
  type = map(string)
  default = {
    ami_id = "ami-12345548454667890"
  }
}

resource "random_pet" "server" {
  keepers = var.keepers_config
}

