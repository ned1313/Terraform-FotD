##############################################
# Function: cidrhost
##############################################
##############################################
# Variables
##############################################
variable "iprange" {
  default = "10.0.0.0/16"
}

variable "hostnum" {
  default = 2
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

output "2_hostnum" {
  value = "${var.hostnum}"
}

output "3_cidrhost_output" {
  value = "${cidrhost(var.iprange,var.hostnum)}"
}
