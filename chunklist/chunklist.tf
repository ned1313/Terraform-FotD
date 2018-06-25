##############################################
# Function: chunklist
##############################################
##############################################
# Variables
##############################################
variable "chunklist" {
  default = ["one", "two", "three", "four"]
}

variable "chunklist_size" {
  default = 2
}

##############################################
# Resources
##############################################

##############################################
# Outputs
##############################################
output "list_output" {
  value = "${var.chunklist}"
}

output "chunklist_output" {
  value = "${chunklist(var.chunklist,var.chunklist_size)}"
}
