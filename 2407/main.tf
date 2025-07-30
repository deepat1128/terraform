resource "local_file" "f1" {
          filename = var.filename1[count.index]
          content = "count looping"
          count = lenghth(var.filename)
          }
variable filename {
          type = list(string)
          default = ["aa","bb","cc"]
          }
resource "local_file" "f2" {
          filename = each.value
          for_each = toset[var.filename2]
          content = " for each looping "
          }
variable "filename2" {
        type = list(string)
        default = ["aa","aa","cc","cc","bb"]
        }
resource "local_file" "f3" {
          filename = var.filename3
          content = "implicit or direct dependency"
          }
variable filename3 {
          type = string
          default = " deepa "
          }
resource "local_file" "f4" {
          filename = local_file.f3.id
          content = " implicit dependency "
          }

          
          
