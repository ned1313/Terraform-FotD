##############################################
# Function: matchkeys
##############################################
##############################################
# Variables
##############################################
variable "value_list" {
  type = "list"

  default = ["v1", "v2", "v3", "v4"]
}

variable "key_list" {
  type = "list"

  default = ["k1", "k2", "k3", "k4"]
}

variable "search_list" {
  type = "list"

  default = ["k1","k2"]
}

variable "map_test" {
  type = "map"

  default = {
    "k1" = "v1"
    "k2" = "v2"
    "k3" = "v3"
  }
}


##############################################
# Resources
##############################################

##############################################
# Outputs
##############################################

#Basic query
output "1_matchkeys_output" {
  value = "${matchkeys(var.value_list,var.key_list,var.search_list)}"
}

#No match query
output "2_matchkeys_output" {
  value = "${matchkeys(var.value_list,var.key_list,list("k5"))}"
}

#Test with a map
output "3_matchkeys_output" {
  value = "${matchkeys(values(var.map_test),keys(var.map_test),var.search_list)}"
}