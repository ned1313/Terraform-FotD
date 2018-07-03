##############################################
# Function: coalescelist
##############################################
##############################################
# Variables
##############################################
variable "list_1" {
  default = []
}

variable "list_2" {
  default = [[], [], []]
}

variable "list_3" {
  default = [false, false, false]
}

variable "list_4" {
  default = ["So", "Long", "and", "Thanks"]
}

##############################################
# Resources
##############################################

##############################################
# Outputs
##############################################

output "coalescelist_output" {
  value = "${coalescelist(var.list_1,var.list_2,var.list_3,var.list_4)}"
}
