##############################################
# Function: transpose
##############################################
##############################################
# Variables
##############################################
variable "map_value" {
  type = "map"

  default = {
    "app_servers"       = ["Ford","Arthur","Zaphod"]
    "db_servers"   = ["Marvin","Trillian"]
    "web_servers" = ["Ford","Marvin"]
  }
}

variable "empty_map" {
  type = "map"

  default = {}
}

variable "second_map" {
  type = "map"

  default = {
    "four" = [1,2,4]
    "six" = [1,2,3,6]
    "eight" = [1,2,4,8]
    "ten" = [1,2,5,10]
  }
}

##############################################
# Resources
##############################################

##############################################
# Outputs
##############################################

output "1_map_value_output" {
  value = "${transpose(var.map_value)}"
}

output "2_map_function_output" {
  value = "${transpose(map("Purple",list("Red","Blue"),"Orange",list("Yellow","Red"),"Green",list("Yellow","Blue")))}"
}

output "3_second_map_value_output" {
  value = "${transpose(var.second_map)}"
}

output "4_empty_map" {
  value = "${transpose(var.empty_map)}"
}
