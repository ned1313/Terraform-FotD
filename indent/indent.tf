##############################################
# Function: indent
##############################################
##############################################
# Variables
##############################################
variable "indent" {
  default = "This is line one\nThis is line two\nThis is line three"
}

variable "spaces" {
  default = 4
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
output "indent_output" {
  value = "${indent(var.spaces,var.indent)}"
}

output "file_output" {
  value = "${indent(var.spaces, data.local_file.source.content)}"
}
