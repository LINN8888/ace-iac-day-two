resource "aviatrix_transit_gateway" "transit" {
  cloud_type           = 1
  account_name         = var.account_name
  gw_name              = "transit-gw"
  vpc_region           = "us-east-1"
  vpc_id               = "vpc-12345678"
  gw_size              = "t3.medium"
  ha_gw                = true
  single_az_ha         = false
}

resource "aviatrix_spoke_gateway" "spoke" {
  cloud_type   = 1
  account_name = var.account_name
  gw_name      = "spoke-gw"
  vpc_region   = "us-east-1"
  vpc_id       = "vpc-87654321"
  gw_size      = "t3.medium"
}
