##############################################
# Function: slice
##############################################
##############################################
# Variables
##############################################
variable "string_list" {
  default = ["One", "Two", "Three", "Four"]
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
output "1_slice_list" {
  value = "${slice(var.string_list,0,1)}"
}

#Test length
output "1b_slice_list" {
  value = "${slice(var.string_list,1,length(var.string_list)-1)}"
}

#Test no items
output "1c_slice_list" {
  value = "${slice(var.string_list,0,0)}"
}

#Test a standard int list
output "2_int_list" {
  value = "${slice(var.int_list,1,3)}"
}

#Test list of empty strings
output "3_empty_string_list" {
  value = "${slice(var.empty_string_list,0,2)}"
}

#Test what will happen with a list boolean values
output "4_bool_list" {
  value = "${slice(var.bool_list,0,2)}"
}
