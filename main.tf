terraform {
  required_version = ">= 1.2"

  required_providers {
    vcd = {
      source = "vmware/vcd"
      version = "3.8.2"
    }
  }
}

#########################
# Org VDC Routed Network
######################### 

resource "vcd_network_routed_v2" "segment" {
  org             = var.vdc_org_name
  name            = var.vcd_network_routed_segment_segment_name
  edge_gateway_id = data.vcd_nsxt_edgegateway.t1.id

  gateway         = var.vcd_network_routed_segment_segment_gateway
  prefix_length   = var.vcd_network_routed_prefix_length_24
  dns1            = var.vcd_network_routed_segment_dns1_server_address
  dns2            = var.vcd_network_routed_segment_dns2_server_address
  dns_suffix      = var.vcd_network_routed_segment_dns_suffix

  static_ip_pool {
    start_address = var.vcd_network_routed_segment_start_address
    end_address   = var.vcd_network_routed_segment_end_address
  }
}
