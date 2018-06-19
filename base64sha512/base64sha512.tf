##############################################
# Function: base64sha512
##############################################
##############################################
# Variables
##############################################
variable "base64sha512" {
  default = "So long, and thanks for all the fish!"
}

##############################################
# Resources
##############################################
##############################################
# Outputs
##############################################
output "base64sha512_output" {
  value = "${base64sha512(var.base64sha512)}"
}

output "sha512_output" {
  value = "${sha512(var.base64sha512)}"
}

output "decoded_output" {
  value = "${base64decode(base64sha512(var.base64sha512))}"
}
