##############################################
# Function: coalesce
##############################################
##############################################
# Variables
##############################################
variable "1_string" {
  default = false
}

variable "2_string" {
  default = 0
}

variable "3_string" {
  default = "three"
}

variable "4_string" {
  default = "four"
}

##############################################
# Resources
##############################################

##############################################
# Outputs
##############################################

output "coalesce_output" {
  value = "${coalesce(var.1_string,var.2_string,var.3_string,var.4_string)}"
}
