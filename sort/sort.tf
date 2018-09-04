##############################################
# Function: sort
##############################################
##############################################
# Variables
##############################################
variable "string_list" {
  default = ["One", "Two", "Three", "Four"]
}

variable "string_list_2" {
  default = ["b","c","a",""]
  
}

variable "int_list" {
  default = [400, 42, 41]
}

variable "empty_string_list" {
  default = ["", "", ""]
}

variable "empty_list" {
  default = []
}

variable "bool_list" {
  default = [true, false]
}

##############################################
# Resources
##############################################

##############################################
# Outputs
##############################################

#Test a standard list
output "1_sort_list" {
  value = "${sort(var.string_list)}"
}

output "1b_sort_list" {
  value = "${sort(var.string_list_2)}"
}

#Test a standard int list
output "2_int_list" {
  value = "${sort(var.int_list)}"
}

#Test list of empty strings
output "3_empty_string_list" {
  value = "${sort(var.empty_string_list)}"
}

#Test what will happen with a list boolean values
output "4_bool_list" {
  value = "${sort(var.bool_list)}"
}

#This will fail.  Nested lists are not supported
#output "5_messing_around" {
#  value = "${sort(list(list("l1v1","l2v2"),list("l2v1","l2v2")))}"
#}