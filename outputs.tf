output "segment_network_id" {
  value = vcd_network_routed_v2.segment.id
}

output "segment_network_name" {
  value = vcd_network_routed_v2.segment.name
}

output "segment_network_prefix_length" {
  value = vcd_network_routed_v2.segment.prefix_length
}

output "segment_network_dns1" {
  value = vcd_network_routed_v2.segment.dns1
}

output "segment_network_dns2" {
  value = vcd_network_routed_v2.segment.dns2
}

output "segment_network_dns_suffix" {
  value = vcd_network_routed_v2.segment.dns_suffix
}

output "segment_network_gateway" {
  value = vcd_network_routed_v2.segment.gateway
}

output "segment_network_static_ip_pool" {
  value = vcd_network_routed_v2.segment.static_ip_pool
}
