##############################################
# Function: distinct
##############################################
##############################################
# Variables
##############################################
variable "string_list" {
  default = ["So", "so", "long", "long"]
}

variable "int_duplicates" {
  default = [42, 42, 42]
}

variable "string_and_int_list" {
  default = [42, "42", 42]
}

variable "empty_string_list" {
  default = ["", "", ""]
}

variable "empty_list" {
  default = []
}

variable "bool_list" {
  default = [false, true, false, true]
}

##############################################
# Resources
##############################################

##############################################
# Outputs
##############################################

#Test a standard list
output "1_distinct_list" {
  value = "${distinct(var.string_list)}"
}

#Test a standard int list
output "2_int_duplicates" {
  value = "${distinct(var.int_duplicates)}"
}

#Test int and strings with same value
output "3_string_and_int_list" {
  value = "${distinct(var.string_and_int_list)}"
}

#Test list of empty strings
output "4_empty_string_list" {
  value = "${distinct(var.empty_string_list)}"
}

#Test what it will do with an empty list
output "5_empty_list" {
  value = "${distinct(var.empty_list)}"
}

#Test what will happen with a list boolean values
output "6_bool_list" {
  value = "${distinct(var.bool_list)}"
}
