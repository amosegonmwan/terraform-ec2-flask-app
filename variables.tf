variable "cidr" {
  default = "10.0.0.0/16"
}

variable "public_key_path" {
  default = "~/.ssh/id_rsa.pub"
}

variable "instance_type" {
  default = "t2.micro"
}
