##############################################
# Function: compact
##############################################
##############################################
# Variables
##############################################
variable "list" {
  default = ["", "so", "long", "", "and", " ", "thanks", ""]
}

variable "empty_list" {
  default = []
}

variable "empty_string_list" {
  default = ["", "", ""]
}

variable "bool_list" {
  default = [false, "zaphod", "", true, 0, 1]
}

##############################################
# Resources
##############################################

##############################################
# Outputs
##############################################

#Test a standard list
output "compact_list" {
  value = "${compact(var.list)}"
}

#Test what it will do with an empty list
output "compact_empty_list" {
  value = "${compact(var.empty_list)}"
}

#Test what will happen with a list full of empty strings
output "compact_empty_string_list" {
  value = "${compact(var.empty_string_list)}"
}

#Test how the function interprets boolean values
output "compact_bool_list" {
  value = "${compact(var.bool_list)}"
}
