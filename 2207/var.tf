variable "filename1" {
default = "hello.txt"
}

variable "filename2"{
default ="xyz.txt"
type=string
}

variable "filename3" {
default = true
type = bool
}

variable "filename4" {
default = 15
type = number
}

variable "content" {
default = 10
type = any
}

variable "filename5" {
default = "deepa" 
type = string

}
