##############################################
# Function: flatten
##############################################
##############################################
# Variables
##############################################
variable "list_1" {
  default = []
}

variable "list_2" {
  default = [[], [], []]
}

variable "list_3" {
  default = [0, [1, 2, 3], [4, 5, 6], [7, 8], 9]
}

variable "list_4" {
  default = ["So", "Long", "and", "Thanks"]
}

variable "list_5" {
  default = [[[1, 2, 3], [4, 5, 6]], [[7, 8], [9, 10]], 11, 12]
}

##############################################
# Resources
##############################################

##############################################
# Outputs
##############################################

output "1_flatten_empty_list" {
  value = "${flatten(var.list_1)}"
}

output "2_flatten_list_of_empty_lists" {
  value = "${flatten(var.list_2)}"
}

output "3_flatten_mixed_list" {
  value = "${flatten(var.list_3)}"
}

output "4_flatten_flat_list" {
  value = "${flatten(var.list_4)}"
}

output "5_flatten_double_nested_list" {
  value = "${flatten(var.list_5)}"
}
