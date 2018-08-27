##############################################
# Function: replace
##############################################
##############################################
# Variables
##############################################
variable "source" {
  default = "Arthur scratched his head and discovered an Arthur doppelganger. Ford screamed and threw a towel over his head."
}

variable "search" {}

variable "replace" {}

##############################################
# Resources
##############################################


##############################################
# Outputs
##############################################
output "1_replace_basic" {
  value = "${replace(var.source,var.search,var.replace)}"
}

output "2_replace_long_hostname" {
  value = "${replace("heart-of-gold-42","/^(.)[^-]+-(.)[^-]+-(.)[^-]+-(\\d+)$/","$1$2$3$4")}"
}

output "3_replace_arthur" {
  value = "${replace(var.source,"/^(A\\S+)\\s.*$/","$1 stands alone.")}"
}


