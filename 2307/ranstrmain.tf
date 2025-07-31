provider "random" {}

locals {
  parts = ["web", "123","dev", "test","feature"]  // This is a tuple-style list
}

resource "random_shuffle" "name" {
  input        = local.parts
  result_count = length(local.parts)
}

output "random_name" {
  value = join("-", random_shuffle.name.result)
}

