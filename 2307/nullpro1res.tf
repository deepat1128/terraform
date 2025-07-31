resource "null_resource" "local_setup" {
  provisioner "local-exec" {
    command = "echo 'Local setup executed!'"


  }
}


output  "msg" { 
value = "executed successfully" 
} 
