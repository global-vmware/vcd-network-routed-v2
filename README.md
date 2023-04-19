Terraform Network Module
This Terraform module creates a segment routed network in an existing VMware Cloud on AWS (VMC) Software Defined Data Center (SDDC).

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|----------|
| vdc_group_name | Name of the VDC group | string | n/a | yes |
| vdc_org_name | Name of the VDC organization | string | n/a | yes |
| vdc_edge_name | Name of the VDC edge | string | n/a | yes |
| prefix_length | CIDR notation prefix length for the 24-bit network | string | `"24"` | no |
| segment_name | Name of the segment routed network | string | `"US1-Segment-01"` | no |
| segment_gateway | Gateway IP address for the segment routed network | string | `"192.168.0.1"` | no |
| start_address | Start IP address of the static IP pool for the segment network | string | `"192.168.0.51"` | no |
| end_address | End IP address of the static IP pool for the segment network | string | `"192.168.0.100"` | no |
| dns1_address | Primary DNS server address for the segment network | string | `"192.168.255.228"` | no |
| dns2_address | Secondary DNS server address for the segment network | string | `""` | no |
| dns_suffix | DNS suffix for the segment network | string | `"segment01.local"` | no |

## Outputs

| Name | Description |
|------|-------------|
| segment_network_id | The ID of the segment network |
| segment_cidr | The CIDR of the segment network |
| static_ip_pool_id | The ID of the static IP address pool |
| dns_server_ids | The IDs of the DNS servers |
| dns_search_suffix | The DNS search suffix |
Example Usage
terraform
Copy code
module "segment_network" {
  source = "./modules/segment-network"

  vdc_group_name = "US1-VDC-GRP-01"
  vdc_org_name = "US1-VDC-ORG-01"
  vdc_edge_name = "US1-VDC-EDGE-01"

  prefix_length = "24"

  segment_name = "US1-Segment-01"
  segment_gateway = "192.168.50.1"

  start_address = "192.168.50.51"
  end_address = "192.168.50.100"

  dns1_address = "192.168.255.228"
  dns2_address = ""
  dns_suffix = "segment01.local"
}