variable "vnetname" {
  default = "vanettf"
}
variable "addressapce" {
  default = ["10.0.0.0/16"]
  type    = list(string)
}
resource "azurerm_virtual_network" "example" {
  name                = var.vnetname
  resource_group_name = var.rgname
  location            = var.location
  address_space       = var.addressapce
}
