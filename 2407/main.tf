Class Practice:
Generally:
resource "local_file" "f0" {
          filename = var.filename
          content = "abc"
          }
variable filename {
          type = list(string)
          default = ["a", "b", "c" ]
}

resource "local_file" "f1" {
          count = length(var.filename)
          filename = var.filename[count.index]
          content = "count looping"
          
          }
variable filename {
          type = list(string)
          default = ["aa","bb","cc"]
          }
-----------------------------------------------------------------------
resource "local_file" "f2" {
          filename = each.value
          for_each = toset[var.filename2]
          content = " for each looping "
          }
variable "filename2" {
        type = list(string)
        default = ["aa","aa","cc","cc","bb"]
        }
------------------------------------------------------------------------
resource "local_file" "f3" {
          filename = var.filename3
          content = "implicit or direct dependency"
          }
variable filename3 {
          type = string
          default = " deepa "
          }
resource "local_file" "f4" {
          filename = local_file.f3.id
          content = " implicit dependency "
          }
-----------------------------------------------------------------------
resource "local_file" "f5"
          filename = " swathi "
          content = " hi "
}
resource "local_file" "f6"
          filename = "abc"
          content = " explicit or indirect dependency "
          depends_on = [local_file.f5]
}
-----------------------------------------------------------------------
life cycle behaviour
meta argument = create_before_destroy :
resource "azurerm_virtual_machine" "vmA" {
          name = "vm1"
          location = " West US2"
          resource_group_name = "RG"
          network_interface_ids = [ azurerm_network_interface.example.id]
          vm_size = "Standard_DS1_v2"
          lifecycle {
create_before_destroy = true
}
}
------------------------------------------------------------------
meta argument = prevent_destroy :
resource "azurerm_virtual_machine" "vmB"
          name = "vm2"
          location = " East US2 "
          resource_group_name" = "RG"
          network_interface_ids = "azurerm_network_interface_id"
          VM_Size = " Standard_DSi_v2"
          lifecycle {
prevent_destroy = true
}
}
--------------------------------
meta argument =  ignore_changes
resource "azurerm_virtual_machine" "vmC" {
          name = "vm3"
          location = "East US"
          resource_group_name = "RG"
          network_interface_ids = [azurerm_network_interface.example.id]
          vm_size = "Standard_DS1_v2"
lifecycle = {
          ignore_changes = [
          network_interface_ids
          ]
          }
          }
-------------------------------------------------------------------------
meta argument = replace_triggered_by
          
resource "azurerm_virtual_machine" "vmD" {
          name = "vm4"
          location = "west US"
          resourcegroup_name = "RG"
          network_interface_ids = [azurerm_network_interface.main.id]
          vm_size = "Standard_DS1_v2"
lifecycle {
          replace_triggered_by= [
          azurerm_network_interface.main.id,
          azurerm_storage_os_disk.main.name
]
}
}

