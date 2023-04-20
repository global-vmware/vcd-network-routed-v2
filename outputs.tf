output "network_name" {
  value = vcd_network_routed_v2.org-vdc-routed-network.name
}

output "network_prefix_length" {
  value = vcd_network_routed_v2.org-vdc-routed-network.prefix_length
}

output "network_dns1" {
  value = vcd_network_routed_v2.org-vdc-routed-network.dns1
}

output "network_dns2" {
  value = vcd_network_routed_v2.org-vdc-routed-network.dns2
}

output "network_dns_suffix" {
  value = vcd_network_routed_v2.org-vdc-routed-network.dns_suffix
}

output "network_gateway" {
  value = vcd_network_routed_v2.org-vdc-routed-network.gateway
}

output "network_static_ip_pool" {
  value = vcd_network_routed_v2.org-vdc-routed-network.static_ip_pool
}