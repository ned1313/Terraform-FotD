##############################################
# Function: length
##############################################
##############################################
# Variables
##############################################
variable "simple_value" {
  default = "Ford"
}

variable "simple_list" {
  type = "list"

  default = ["So", "long", "and", "thanks"]
}

variable "nested_list" {
  type = "list"

  default = [
    ["So"],
    ["Long"],
    ["and"],
    ["thanks!"],
  ]
}

variable "mixed_list" {
  type = "list"

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

variable "map_value" {
  type = "map"

  default = {
    "life"       = "42"
    "universe"   = "6"
    "everything" = "7"
  }
}

variable "empty_map" {
  type = "map"

  default = {}
}

variable "nested_map" {
  type = "map"

  default = {
    "map_one" = {
      "key_1-1" = "value_1-1"
      "key_1-2" = "value_1-2"
    }

    "map_two" = {
      "key_2-1" = "value_2-1"
      "key_2-2" = "value_2-2"
    }
  }
}

##############################################
# Resources
##############################################

##############################################
# Outputs
##############################################

output "1_simple_value_output" {
  value = "${length(var.simple_value)}"
}

output "2_simple_list_output" {
  value = "${length(var.simple_list)}"
}

output "3_nested_list_output" {
  value = "${length(var.nested_list)}"
}

output "4_mixed_list_output" {
  value = "${length(var.mixed_list)}"
}

output "5_bool_value_output" {
  value = "${length(var.bool_value)}"
}

output "6_map_output" {
  value = "${length(var.map_value)}"
}

output "7_empty_map_output" {
  value = "${length(var.empty_map)}"
}

output "8_map_output" {
  value = "${length(var.nested_map)}"
}
