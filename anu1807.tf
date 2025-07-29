resource local_file filecreation {
filename = "xyz.txt"
content = " Have a nice day "
}

resource local_file filecreate {
filename = "swathi"
content = " Good Day "

}



resource "null_resource" "create_folder" {
provisioner "local-exec" {
command = "mkdir -p ./deepa"

}
}


resource "null_resource" "example" {
  provisioner "local-exec" {
    command = "echo Hello > hello.txt"
  }
}

