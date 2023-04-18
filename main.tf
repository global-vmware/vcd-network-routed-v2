terraform {
  required_providers {
    vcd = {
      source = "vmware/vcd"
      version = "3.8.2"
    }
  }
  required_version = "3.8.2"
}

# Create the Datacenter Group data source
data "vcd_vdc_group" "dcgroup" {
  name = var.vdc_group_name
}

# Create the NSX-T Edge Gateway data source
data "vcd_nsxt_edgegateway" "t1" {
  org      = var.vdc_org_name
  owner_id = data.vcd_vdc_group.dcgroup.id
  name     = var.vdc_edge_name
}

#########################
# Org VDC Routed Network
######################### 

resource "vcd_network_routed_v2" "segment01" {
  org             = var.vdc_org_name
  name            = var.vcd_network_routed_segment01_segment_name
  edge_gateway_id = data.vcd_nsxt_edgegateway.t1.id

  gateway         = var.vcd_network_routed_segment01_segment_gateway
  prefix_length   = var.vcd_network_routed_prefix_length_24
  dns1            = var.vcd_network_routed_segment01_dns1_server_address
  dns2            = var.vcd_network_routed_segment01_dns2_server_address
  dns_suffix      = var.vcd_network_routed_segment01_dns_suffix

  static_ip_pool {
    start_address = var.vcd_network_routed_segment01_start_address
    end_address   = var.vcd_network_routed_segment01_end_address
  }
}
