output "instance_public_ips" {
  value = [for instance in aws_instance.servers : instance.public_ip]
}

output "instance_ids" {
  value = [for instance in aws_instance.servers : instance.id]
}
