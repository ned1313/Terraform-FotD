##############################################
# Function: values
##############################################
##############################################
# Variables
##############################################
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


##############################################
# Resources
##############################################

##############################################
# Outputs
##############################################

output "1_map_value_output" {
  value = "${values(var.map_value)}"
}

#String values only
#output "2_map_function_output" {
#  value = "${values(map("life",list("42"),"the universe",list("six","times","seven")))}"
#}

output "3_empty_map_output" {
  value = "${values(var.empty_map)}"
}

output "4_reverse_map" {
  value = "${zipmap(values(var.map_value), keys(var.map_value))}"
}


