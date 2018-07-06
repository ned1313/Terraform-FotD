##############################################
# Function: contains
##############################################
##############################################
# Variables
##############################################
variable "string_list" {
  default = ["So", "long", "and", "thanks"]
}

variable "string_duplicates" {
  default = [42, 42, 42]
}

variable "empty_list" {
  default = []
}

variable "empty_string_list" {
  default = ["", "", ""]
}

variable "bool_list" {
  default = [false, true]
}

variable "nested_list" {
  default = [["one"], ["two"]]
}

##############################################
# Resources
##############################################

##############################################
# Outputs
##############################################

#Test a standard list
output "1_contains_list" {
  value = "${contains(var.string_list,"So")}"
}

#Test a standard list to false
output "2_contains_list_false" {
  value = "${contains(var.string_list,"fish")}"
}

#Test case sensitivity
output "3_string_list_case" {
  value = "${contains(var.string_list,"so")}"
}

#Test duplicates
output "4_string_list_duplicate" {
  value = "${contains(var.string_duplicates,42)}"
}

#Test what it will do with an empty list
output "5_contains_empty_list" {
  value = "${contains(var.empty_list,"")}"
}

#Test what will happen with a list full of empty strings
output "6_contains_empty_string_list" {
  value = "${contains(var.empty_string_list,"")}"
}

#Test how the function interprets boolean values
output "7_contains_bool_list" {
  value = "${contains(var.bool_list, true)}"
}

output "8_contains_bool_list_2" {
  value = "${contains(var.bool_list, 1)}"
}

output "9_contains_nested_list" {
  value = "${contains(var.nested_list,"one")}"
}
