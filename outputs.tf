output "segment01_network_id" {
  value = vcd_network_routed_v2.segment01.id
}

output "segment01_network_name" {
  value = vcd_network_routed_v2.segment01.name
}

output "segment01_network_cidr" {
  value = vcd_network_routed_v2.segment01.cidr_block
}

output "segment01_network_dns1" {
  value = vcd_network_routed_v2.segment01.dns1
}

output "segment01_network_dns2" {
  value = vcd_network_routed_v2.segment01.dns2
}

output "segment01_network_dns_suffix" {
  value = vcd_network_routed_v2.segment01.dns_suffix
}

output "segment01_network_gateway" {
  value = vcd_network_routed_v2.segment01.gateway
}

output "segment01_network_static_ip_pool" {
  value = vcd_network_routed_v2.segment01.static_ip_pool
}
