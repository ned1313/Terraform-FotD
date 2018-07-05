##############################################
# Function: concat
##############################################
##############################################
# Variables
##############################################
variable "list_1" {
  default = []
}

variable "list_2" {
  default = [6, 7, 42]
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

output "concat_output" {
  value = "${concat(var.list_1,var.list_2,var.list_3,var.list_4)}"
}
