##############################################
# Function: split
##############################################
##############################################
# Variables
##############################################
variable "source" {
  default = "Arthur scratched his head and discovered an Arthur doppelganger. Ford screamed and threw a towel over his head."
}

variable "delimiter" {
  default = " "
}

##############################################
# Resources
##############################################


##############################################
# Outputs
##############################################
output "1_split" {
  value = "${split(var.delimiter,var.source)}"
}


