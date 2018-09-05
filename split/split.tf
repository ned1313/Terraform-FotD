##############################################
# Function: split
##############################################
##############################################
# Variables
##############################################
variable "source" {
  default = "Arthur scratched his head and discovered an Arthur doppelganger. \nFord screamed and threw a towel over his head."
}

variable "delimiter" {
  default = "\n"
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

output "original" {
  value = "${var.source}"
}


