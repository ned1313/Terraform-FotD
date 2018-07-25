##############################################
# Function: element
##############################################
##############################################
# Variables
##############################################
variable "simple_value" {
  default = "Ford"
}

variable "simple_list" {
  default = ["So", "long", "and", "thanks"]
}

variable "nested_list" {
  default = [
    ["So"],
    ["Long"],
    ["and"],
    ["thanks!"],
  ]
}

variable "mixed_list" {
  default = [
    [
      ["3-1"],
      "2-1",
    ],
    [
      ["3-2"],
      "2-2",
    ],
    "1-1",
  ]
}

variable "bool_value" {
  default = true
}

##############################################
# Resources
##############################################

##############################################
# Outputs
##############################################

output "1_simple_value_output" {
  value = "${jsonencode(var.simple_value)}"
}

output "2_simple_list_output" {
  value = "${jsonencode(var.simple_list)}"
}

output "3_nested_list_output" {
  value = "${jsonencode(var.nested_list)}"
}

output "4_mixed_list_output" {
  value = "${jsonencode(var.mixed_list)}"
}

output "5_bool_value_output" {
  value = "${jsonencode(var.bool_value)}"
}

output "map_output" {
  value = "${jsonencode(map("life",list("42"),"the universe",list("six","times","seven")))}"
}
