##############################################
# Function: formatlist
##############################################
locals {
  int_list_local = "${list("1","2","3")}"
}

##############################################
# Variables
##############################################
variable "string_1" {
  default = "Beeblebrox"
}

variable "string_list" {
  default = ["Ford", "Arthur", "Trillian"]
}

variable "int_1" {
  default = 42
}

variable "int_list" {
  default = [1, 2, 3]
}

variable "float_1" {
  default = 3.14159
}

variable "float_list" {
  default = [3.14159, 1.21, 42.42]
}

##############################################
# Resources
##############################################

##############################################
# Outputs
##############################################

output "formatlist_one_item" {
  value = "${formatlist("%v-%v",var.string_list,var.string_1)}"
}

output "formatlist_same_items" {
  value = "${formatlist("%v-%v",var.string_list,var.int_list)}"
}

output "formatlist_three_items" {
  value = "${formatlist("%v is the answer to %v times %v",var.string_list,var.int_list,var.float_list)}"
}
