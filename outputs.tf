output "lemp_public_ip" {
  value = module.instance_lemp.public_ip
}

output "lamp_public_ip" {
  value = module.instance_lamp.public_ip
}
