resource "random_integer" "priority" {
  min     = 1
  max     = 50000
  keepers = {
    listener_name = var.listener_name
  }
}
variable listener_name {
type = string
default = "123"
}

