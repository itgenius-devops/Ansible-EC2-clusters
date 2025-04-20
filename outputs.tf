<<<<<<< HEAD
output "instance_public_ips" {
  value = [for instance in aws_instance.servers : instance.public_ip]
}

output "instance_ids" {
  value = [for instance in aws_instance.servers : instance.id]
}
=======
output "instance_public_ips" {
  value = [for instance in aws_instance.servers : instance.public_ip]
}

output "instance_ids" {
  value = [for instance in aws_instance.servers : instance.id]
}
>>>>>>> cf96b1381fffa43047bc10e1c82716d87a226ea6
