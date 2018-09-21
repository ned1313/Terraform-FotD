##############################################
# Function: zipmap
##############################################
##############################################
# Variables
##############################################
variable "list_1" {
  type = "list"

  default = [["n1v1","n1v2"],["n2v1","n2v2"]]
}

variable "map_1" {
  type = "map"

  default = {
    "k1" = "v1"
    "k2" = "v2"
  }
}

variable "list_2" {
  default = [[], [], []]
}

variable "list_3" {
  default = [false, false, false]
}

variable "list_4" {
  default = ["So", "Long", "and", "Thanks"]
}

##############################################
# Resources
##############################################

##############################################
# Outputs
##############################################

output "1_standard_list" {
  value = "${zipmap(list("k1","k2","k3"),list("v1","v2","v3"))}"
}

output "2_empty_values" {
  value = "${zipmap(var.list_3, var.list_2)}"
}

output "3_nest_list_values" {
  value = "${zipmap(list("k1","k2"), var.list_1)}"
}

output "4_nest_map_values" {
  value = "${zipmap(list("k1","k2"), list(var.map_1,var.map_1))}"
}

output "5_nest_mixed_lengths" {
  value = "${zipmap(list("k1","k2"), list(var.list_4,var.list_3))}"
}

