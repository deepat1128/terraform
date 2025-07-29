# The following example shows how to generate a random priority
# between 1 and 50000 for a aws_alb_listener_rule resource:

resource "random_integer" "priority" {
  min = var.min 
  max = var.max 
}

variable min {
type = number
default = 1
}

variable max {
type = number
default = 50000
}

variable priority {
description = "Priority for random_integer"
type = number
default = 23
}

output "priority_value" {
  value = var.priority
}

