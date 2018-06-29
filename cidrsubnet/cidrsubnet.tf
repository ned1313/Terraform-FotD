##############################################
# Function: cidrsubnet
##############################################
##############################################
# Variables
##############################################
variable "iprange" {
  default = "10.0.0.0/16"
}

variable "newbits" {
  default = 4
}

variable "netnum" {
  default = 0
}

##############################################
# Resources
##############################################

##############################################
# Outputs
##############################################
output "1_iprange" {
  value = "${var.iprange}"
}

output "2_newbits" {
  value = "${var.newbits}"
}

output "3_netnum" {
  value = "${var.netnum}"
}

output "4_cidrsubnet_output" {
  value = "${cidrsubnet(var.iprange,var.newbits,var.netnum)}"
}
