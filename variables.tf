variable "vdc_group_name" {}

variable "vdc_org_name" {}

variable "vdc_edge_name" {}

variable "prefix_length" {
  description = "CIDR notation prefix length for the 24-bit network"
  default = "24"
}

variable "segment_name" {
  description = "Name of the segment routed network"
  default = "US1-Segment-01"
}

variable "segment_gateway" {
  description = "Gateway IP address for the segment routed network"
  default = "192.168.0.1"
}

variable "start_address" {
  description = "Start IP address of the static IP pool for the segment network"
  default = "192.168.0.51"
}

variable "end_address" {
  description = "End IP address of the static IP pool for the segment network"
  default = "192.168.0.100"
}

variable "dns1_address" {
  description = "Primary DNS server address for the segment network"
  default = "192.168.255.228"
}

variable "dns2_address" {
  description = "Secondary DNS server address for the segment network"
  default = ""
}

variable "dns_suffix" {
  description = "DNS suffix for the segment network"
  default = "segment01.local"
}
