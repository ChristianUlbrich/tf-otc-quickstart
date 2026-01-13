output "external_ip" {
  value = opentelekomcloud_networking_floatingip_v2.eip_quickstart.address
}

output "ssh_command" {
  value = "ssh ubuntu@${opentelekomcloud_networking_floatingip_v2.eip_quickstart.address}"
}
