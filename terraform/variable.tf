variable "my-region" {
    type = string
    default = "ap-south-1"
    description = "this is mumbai region"
  
}
variable "my-image" {
    type = string
    default = "ami-078efad6f7ec18b8a"
  description = "this is amz linux ami"
}

variable "my-size" {
    type = string
    default = "t2.micro"
    description = "1GB RAM "
  
}
variable "num-of-instance" {
    type = number
    default = 2
    description = "number of vm we want "
  
}

