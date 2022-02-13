output "lemp_public_ip" {
  description = "Public Ipv4 address of LEMP server"
  value       = module.instance_lemp.public_ip
}

output "lamp_public_ip" {
  description = "Public Ipv4 address of LAMP server"
  value       = module.instance_lamp.public_ip
}
