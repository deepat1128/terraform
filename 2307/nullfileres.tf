resource "null_resource" "generate_file" {
  provisioner "local-exec" {
    command = "echo 'Cluster initialized on $(date)' > cluster-status.txt"
  }
}



resource "null_resource" "example" {
  provisioner "local-exec" {
    command = "echo 'this file is created from null resource' > nullres.txt"
  }
}

