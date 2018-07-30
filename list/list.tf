##############################################
# Function: list
##############################################
##############################################
# Variables
##############################################
variable "value_1" {
  default = "Ford"
}

variable "value_2" {
  default = "Prefect"
}

variable "value_3" {
  default = "Arthur"
}

##############################################
# Resources
##############################################

##############################################
# Outputs
##############################################

output "1_basic_list_output" {
  value = "${list(var.value_1,var.value_2,var.value_3)}"
}

output "2_nested_list_output" {
  value = "${list(list(var.value_1),list(var.value_2,var.value_3))}"
}

output "3_map_list_output" {
  value = "${list(map("life","42","universe","6"),map("everything","7"))}"
}

output "4_empty_list" {
  value = "${list()}"
}
