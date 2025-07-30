resource "local_file" "f1" {
          filename = var.filename1[count.index]
          content = "test"
          count = lenghth(var.filename)
          }
variable filename {
          type = list(string)
          default = ["aa","bb","cc"]
          }
resource "local_file" "f2" {
          filename = each.value
          for_each = to set for [var.filename2]
          content = " 123 "
          }
variable "filename2" {
        type = list(string)
        default = ["aa","aa","cc","cc","bb"]
        }
