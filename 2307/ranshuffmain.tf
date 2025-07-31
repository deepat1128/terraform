variable "az_list" {
  type = list(string)
  default = ["us-west-1a", "us-east-1f", "us-west-1c", "us-east-1b","us-west-1a","us-west-1d", "us-west-1e"]
}

resource "random_shuffle" "az" {
  input        = var.az_list
  result_count =5 
}

