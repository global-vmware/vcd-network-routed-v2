terraform {
  required_version = ">= 1.2"

  required_providers {
    vcd = {
      source = "vmware/vcd"
      version = "3.8.2"
    }
  }
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

resource "vcd_network_routed_v2" "segment" {
  org             = var.vdc_org_name
  vdc             = var.vdc_group_name
  name            = var.segment_name
  edge_gateway_id = data.vcd_nsxt_edgegateway.t1.id

  gateway         = var.segment_gateway
  prefix_length   = var.prefix_length
  dns1            = var.dns1_address
  dns2            = var.dns2_address
  dns_suffix      = var.dns_suffix

  static_ip_pool {
    start_address = var.start_address
    end_address   = var.end_address
  }
}
