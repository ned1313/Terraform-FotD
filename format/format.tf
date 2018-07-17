##############################################
# Function: format
##############################################
##############################################
# Variables
##############################################
variable "string_1" {
  default = "example string"
}

variable "int_1" {
  default = 42
}

variable "float_1" {
  default = 3.14159
}

##############################################
# Resources
##############################################

##############################################
# Outputs
##############################################

output "format_string" {
  value = "${format("%q",var.string_1)}"
}

output "format_string_16byte" {
  value = "${format("%.2X",var.string_1)}"
}

#Addition forces int value type
output "format_int_base2" {
  value = "${format("%b",var.int_1 + 0)}"
}

#Addition forces float value type
output "format_float_scientific" {
  value = "${format("%E",var.float_1 + 0.0)}"
}

output "format_float_precision" {
  value = "${format("%+.3f",var.float_1 + 0.0)}"
}

output "format_bool" {
  value = "${format("%t",true)}"
}
