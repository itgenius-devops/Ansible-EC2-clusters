variable "aws_region" {
  default = "us-east-1"
}

variable "availability_zone" {
  default = "us-east-1a"
}

variable "vpc_cidr" {
  default = "172.31.0.0/16"
}

variable "subnet_cidr" {
  default = "172.31.80.0/20"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "ami_id" {
  description = "Amazon Linux AMI"
  default     = "ami-000ec6c25978d5999"
}

variable "key_name" {
  description = "Your AWS key pair name"
  default     = "ansible_key"
  type        = string
}

variable "instance_names" {
  type    = list(string)
  default = ["master", "node1", "node2"]
}
