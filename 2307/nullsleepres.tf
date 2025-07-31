resource "time_sleep" "wait_2_min" {
  create_duration = "120s"  #  120 in seconds
}

resource "null_resource" "after_sleep" {
  depends_on = [time_sleep.wait_2_min]
  provisioner "local-exec" {
    command = "echo 'Waited  2 minutes  before running this.'"
  }
}



