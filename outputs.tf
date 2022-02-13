output "lemp_public_ip" {
  description = "Public Ipv4 address of LEMP server"
  value       = module.instance_lemp.public_ip
}

output "lamp_public_ip" {
  description = "Public Ipv4 address of LAMP server"
  value       = module.instance_lamp.public_ip
}

output "lb_public_ip" {
   description = "Load Balancer Public IP"
   value       = data.yandex_lb_network_load_balancer.foo.listener
}
