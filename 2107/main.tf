resource "random_id" "server" {
  keepers = {
    # Generate a new id each time we switch to a new AMI id
    ami_id = var.ami_id
  }

  byte_length = 8
}

variable ami_id {
default = "qeger"
type = string 
}  
