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

variable "vcd_network_routed_segment_segment_name" {
  description = "Name of the segment routed network"
  default = ""
}

variable "vcd_network_routed_segment_segment_gateway" {
  description = "Gateway IP address for the segment routed network"
  default = ""
}

variable "vcd_network_routed_segment_start_address" {
  description = "Start IP address of the static IP pool for the segment network"
  default = ""
}

variable "vcd_network_routed_segment_end_address" {
  description = "End IP address of the static IP pool for the segment network"
  default = ""
}

variable "vcd_network_routed_segment_dns1_server_address" {
  description = "Primary DNS server address for the segment network"
  default = ""
}

variable "vcd_network_routed_segment_dns2_server_address" {
  description = "Secondary DNS server address for the segment network"
  default = ""
}

variable "vcd_network_routed_segment_dns_suffix" {
  description = "DNS suffix for the segment network"
  default = ""
}
