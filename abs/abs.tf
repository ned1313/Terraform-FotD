##############################################
# Function: abs
##############################################
##############################################
# Variables
##############################################
variable "plus_int" {
  default = 5
}

variable "neg_int" {
  default = -5
}

variable "plus_float" {
  default = 3.14159
}

variable "neg_float" {
  default = -3.14159
}

variable "string_test" {
  default = "-1"
}

variable "text_test" {
  default = "Ummmm..."
}

variable "bool_test" {
  default = false
}

##############################################
# Resources
##############################################

##############################################
# Outputs
##############################################
output "plus_int" {
  value = "${abs(var.plus_int)}"
}

output "neg_int" {
  value = "${abs(var.neg_int)}"
}

output "plus_float" {
  value = "${abs(var.plus_float)}"
}

output "neg_float" {
  value = "${abs(var.neg_float)}"
}

output "string_test" {
  value = "${abs(var.string_test)}"
}

# Doesn't work, throws an error
# output.text_test: __builtin_StringToFloat: strconv.ParseFloat: parsing "Ummmm...": invalid syntax
# output "text_test" {
#   value = "${abs(var.text_test)}"
# }

output "bool_test" {
  value = "${abs(var.bool_test)}"
}
