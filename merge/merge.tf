##############################################
# Function: merge
##############################################
##############################################
# Variables
##############################################
variable "map_1_value" {
  type = "map"

  default = {
    "m1k1"       = "m1v1"
    "m1k2"       = "m1v2"
    "m1k3"       = "m1v3"
  }
}

variable "map_2_value" {
  type = "map"

  default = {
    "m2k1"       = "m2v1"
    "m2k2"       = "m2v2"
    "m2k3"       = "m2v3"
  }
}

variable "empty_map" {
  type = "map"

  default = {}
}

variable "nested_map_1" {
  type = "map"

  default = {
    "n1m1" = {
      "n1m1k1" = "n1m1v1"
      "n1m1k2" = "n1m1v2"
      "n1m1k3" = "n1m1v3"
    }

    "n1m2" = {
      "n1m2k1" = "n1m2v1"
      "n1m2k2" = "n1m2v2"
      "n1m2k3" = "n1m2v3"
    }
  }
}

variable "nested_map_2" {
  type = "map"

  default = {
    "n2m1" = {
      "n2m1k1" = "n2m1v1"
      "n2m1k2" = "n2m1v2"
      "n2m1k3" = "n2m1v3"
    }

    "n2m2" = {
      "n2m2k1" = "n2m2v1"
      "n2m2k2" = "n2m2v2"
      "n2m2k3" = "n2m2v3"
    }
  }
}

##############################################
# Resources
##############################################

##############################################
# Outputs
##############################################

output "1_merge_basic" {
  value = "${merge(var.map_1_value,var.map_2_value)}"
}

output "2_merge_empty" {
  value = "${merge(var.map_1_value,var.empty_map)}"
}

output "3_merge_duplicates" {
  value = "${merge(var.map_1_value,var.map_2_value,map("m1k1","m1v1-alt"))}"
}

output "4_merge_nested" {
  value = "${merge(var.nested_map_1,var.nested_map_2)}"
}

output "5_merge_mixed" {
  value = "${merge(var.map_1_value,var.nested_map_2)}"
}

output "5_merge_mega" {
  value = "${merge(var.map_1_value,var.map_2_value,var.nested_map_1,var.nested_map_2)}"
}

output "6_merge_null" {
  value = "${merge(var.empty_map)}"
}