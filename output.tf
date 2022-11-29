output "public_ip_address_nat_instance" {
  value = yandex_compute_instance.nat.network_interface.0.nat_ip_address
}
output "internal_ip_address_nat_instance" {
  value = yandex_compute_instance.nat.network_interface.0.ip_address
}
output "internal_ip_address_public_host" {
  value = yandex_compute_instance.publicInstance.network_interface.0.ip_address
}
output "external_ip_address_public_host" {
  value = yandex_compute_instance.publicInstance.network_interface.0.nat_ip_address
}
output "internal_ip_address_private_instance" {
  value = yandex_compute_instance.privateInstance.network_interface.0.ip_address
}
output "external_ip_address_private_instance" {
  value = yandex_compute_instance.privateInstance.network_interface.0.nat_ip_address
}

