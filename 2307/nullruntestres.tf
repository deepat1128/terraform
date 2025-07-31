resource "null_resource" "run_tests" {
  triggers = {
    test_files = sha1(file("tests/testfile.py"))
  }

  provisioner "local-exec" {
    command = "pytest tests/ --maxfail=1 --disable-warnings"
  }
}

