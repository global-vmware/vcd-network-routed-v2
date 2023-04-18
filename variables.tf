variable "vdc_group_name" {
  description = "Cloud Director Datacenter Group Name"
}

variable "vdc_org_name" {
  description = "Cloud Director Organization Name"
}

variable "vdc_edge_name" {
  description = "Cloud Director Edge Name"
}

variable "vcd_network_routed_prefix_length_24" {
  description = "CIDR notation prefix length for the 24-bit network"
  default = "24"
}

variable "vcd_network_routed_segment01_segment_name" {
  description = "Name of the Segment01 routed network"
  default = "segment01"
}

variable "vcd_network_routed_segment01_segment_gateway" {
  description = "Gateway IP address for the Segment01 routed network"
  default = "192.168.0.1"
}

variable "vcd_network_routed_segment01_start_address" {
  description = "Start IP address of the static IP pool for the Segment01 network"
  default = "192.168.0.51"
}

variable "vcd_network_routed_segment01_end_address" {
  description = "End IP address of the static IP pool for the Segment01 network"
  default = "192.168.0.100"
}

variable "vcd_network_routed_segment01_dns1_server_address" {
  description = "Primary DNS server address for the Segment01 network"
  default = "69.20.0.164"
}

variable "vcd_network_routed_segment01_dns2_server_address" {
  description = "Secondary DNS server address for the Segment01 network"
  default = "69.20.0.196"
}

variable "vcd_network_routed_segment01_dns_suffix" {
  description = "DNS suffix for the Segment01 network"
  default = "segment01.local"
}
