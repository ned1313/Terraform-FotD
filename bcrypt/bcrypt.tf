##############################################
# Function: bcrypt
##############################################
##############################################
# Variables
##############################################
variable "bcrypt" {
  default = "So long, and thanks for all the fish!"
}

##############################################
# Resources
##############################################
##############################################
# Outputs
##############################################

#Cost defaults to 10
output "bcrypt_no_cost" {
  value = "${bcrypt(var.bcrypt)}"
}

output "bcrypt_5_cost" {
  value = "${bcrypt(var.bcrypt, 5)}"
}

output "bcrypt_12_cost" {
  value = "${bcrypt(var.bcrypt, 12)}"
}
