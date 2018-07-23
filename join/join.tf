##############################################
# Function: join
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

variable "nested_list" {
  default = [[41], [42]]
}

##############################################
# Resources
##############################################

##############################################
# Outputs
##############################################

#Test a standard list
output "1_join_list" {
  value = "${join(" ",var.string_list)}"
}

#Test length
output "1b_join_list" {
  value = "${join(",",var.string_list)}"
}

#Test wrap
output "1c_join_list" {
  value = "${join("+",var.string_list)}"
}

#Test a standard int list
output "2_int_list" {
  value = "${join("\n",var.int_list)}"
}

#Test list of empty strings
output "3_empty_string_list" {
  value = "${join(" \\",var.empty_string_list)}"
}

#Test square bracket as a delimiter
output "4_bool_list" {
  value = "${join("\\[",var.bool_list)}"
}

#separate with multiple characters
output "5_nested_list_flatten" {
  value = "${join("--",flatten(var.nested_list))}"
}

output "6_empty_list" {
  value = "${join(" \\",var.empty_list)}"
}
