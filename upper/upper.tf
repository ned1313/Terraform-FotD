##############################################
# Function: upper
##############################################
##############################################
# Variables
##############################################
variable "upper" {
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
output "upper_output" {
  value = "${upper(var.upper)}"
}

output "file_output" {
  value = "${upper(data.local_file.source.content)}"
}
