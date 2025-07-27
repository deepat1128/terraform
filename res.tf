resource "local_file" "foo" {
  content  = "foo!"
  filename = "xyz.txt"
}


resource "local_file" "cool" {
content = "cool"
filename = "abc.txt"
}

resource "null_resource" "create_folder1" {
provisioner "local-exec" {
command = "mkdir -p ./deepa"

}
}

resource "null_resource" "create_folder2" {
provisioner "local-exec" {
command = "mkdir -p ./anu"

}
}

