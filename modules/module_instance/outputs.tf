output "public_ip" {
  value = yandex_compute_instance.default.network_interface.*.nat_ip_address
}
