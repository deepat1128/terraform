resource "local_file" "foo" {
  content  = "foo!"
  filename = "xyz.txt"
}


resource "local_file" "cool" {
content = "cool"
filename = "abc.txt"
}

