##############################################
# Function: index
##############################################
##############################################
# Variables
##############################################
variable "string_list" {
  default = ["So", "long", "and", "thanks", "So"]
}

variable "int_list" {
  default = [41, 42, 43, 42]
}

variable "empty_string_list" {
  default = ["", "", ""]
}

variable "empty_list" {
  default = []
}

variable "bool_list" {
  default = [false, true]
}

##############################################
# Resources
##############################################

##############################################
# Outputs
##############################################

#Test a standard list with more than one matching element
output "1a_index_list" {
  value = "${index(var.string_list,"So")}"
}

#Test a standard int list
output "2_int_list" {
  value = "${index(var.int_list,42)}"
}

#Test list of empty strings
output "3_empty_string_list" {
  value = "${index(var.empty_string_list,"")}"
}

#Test what will happen with boolean values
output "4_bool_list" {
  value = "${index(var.bool_list,1)}"
}
