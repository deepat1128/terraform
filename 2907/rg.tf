variable "rgname" {
  default = "teraformrg"
}
variable "location" {
  default = "West US 2"
}
resource "azurerm_resource_group" "example" {
  name     = var.rgname
  location = var.location
}
