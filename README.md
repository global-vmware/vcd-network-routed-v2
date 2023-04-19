Terraform Network Module
This Terraform module creates a segment routed network in an existing VMware Cloud on AWS (VMC) Software Defined Data Center (SDDC).

Inputs
Name	Description	Type	Default	Required
vdc_group_name	The name of the VMC SDDC VDC Group.	string		yes
vdc_org_name	The name of the VMC SDDC Org.	string		yes
vdc_edge_name	The name of the VMC SDDC Edge Gateway.	string		yes
prefix_length	CIDR notation prefix length for the 24-bit network.	string	"24"	no
segment_name	Name of the segment routed network.	string	"US-Segment-01"	no
segment_gateway	Gateway IP address for the segment routed network.	string	"192.168.0.1"	no
start_address	Start IP address of the static IP pool for the segment network.	string	"192.168.0.51"	no
end_address	End IP address of the static IP pool for the segment network.	string	"192.168.0.100"	no
dns1_address	Primary DNS server address for the segment network.	string	"192.168.255.228"	no
dns2_address	Secondary DNS server address for the segment network.	string	""	no
dns_suffix	DNS suffix for the segment network.	string	"segment01.local"	no
Outputs
Name	Description
segment_id	ID of the segment network created.
segment_name	Name of the segment network created.
segment_gateway	Gateway IP address of the segment network.
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