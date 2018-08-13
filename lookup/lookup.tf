##############################################
# Function: lookup
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

variable "nested_map" {
  type = "map"

  default = {
    "Zaphod" = {
      "First" = "Zaphod"
      "Last" = "Beeblebrox"
    }

    "Arthur" = {
      "First" = "Arthur"
      "Last" = "Dent"
    }
  }
}

variable "lookup_key" {
  default = "life"
}

variable "default_key" {
  default = "Trillian"
}



##############################################
# Resources
##############################################

##############################################
# Outputs
##############################################

output "1_map_value_output" {
  value = "${lookup(var.map_value,var.lookup_key,var.default_key)}"
}
output "2_empty_map_output" {
  value = "${lookup(var.empty_map,var.lookup_key,var.default_key)}"
}

#Nested maps not allowed.  
#Will work if you specify a non-existent key and a default value
#output "3_nested_map_output" {
#  value = "${lookup(var.nested_map,var.lookup_key,var.default_key)}"
#}
