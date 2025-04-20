provider "aws" {
  region = var.aws_region
}

# Get the default VPC
data "aws_vpc" "existing" {
  default = true
}

# Get the subnet using the provided CIDR block
data "aws_subnet" "existing" {
  filter {
    name   = "cidrBlock"
    values = [var.subnet_cidr]
  }

  vpc_id = data.aws_vpc.existing.id
}

resource "aws_security_group" "instance_sg" {
  name        = "ec2-instance-sg"
  description = "Allow SSH access"
  vpc_id      = data.aws_vpc.existing.id

  ingress {
    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "ec2-instance-sg"
  }
}

resource "aws_instance" "servers" {
  count         = length(var.instance_names)
  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id     = data.aws_subnet.existing.id
  security_groups = [
    aws_security_group.instance_sg.id
  ]
  key_name = var.key_name

  tags = {
    Name = var.instance_names[count.index]
  }
}
