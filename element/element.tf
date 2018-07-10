##############################################
# Function: element
##############################################
##############################################
# Variables
##############################################
variable "string_list" {
  default = ["So", "long", "and", "thanks"]
}

variable "int_list" {
  default = [41, 42, 43]
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

#Test a standard list
output "1_element_list" {
  value = "${element(var.string_list,1)}"
}

#Test length
output "1b_element_list" {
  value = "${element(var.string_list,length(var.string_list)-1)}"
}

#Test wrap
output "1c_element_list" {
  value = "${element(var.string_list,10)}"
}

#Test a standard int list
output "2_int_list" {
  value = "${element(var.int_list,2)}"
}

#Test list of empty strings
output "3_empty_string_list" {
  value = "${element(var.empty_string_list,2)}"
}

#Test what will happen with a list boolean values
output "4_bool_list" {
  value = "${element(var.bool_list,2)}"
}
