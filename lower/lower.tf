##############################################
# Function: lower
##############################################
##############################################
# Variables
##############################################
variable "lower" {
  default = "This Line Is Capitalized."
}

variable "sourcefile" {
  default = "textFile.txt"
}

##############################################
# Resources
##############################################

data "local_file" "source" {
  filename = "${var.sourcefile}"
}

##############################################
# Outputs
##############################################
output "lower_output" {
  value = "${lower(var.lower)}"
}

output "file_output" {
  value = "${lower(data.local_file.source.content)}"
}
