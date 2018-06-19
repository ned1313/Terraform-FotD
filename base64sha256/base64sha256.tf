##############################################
# Function: base64sha256
##############################################
##############################################
# Variables
##############################################
variable "base64sha256" {
  default = "So long, and thanks for all the fish!"
}

##############################################
# Resources
##############################################
##############################################
# Outputs
##############################################
output "base64sha256_output" {
  value = "${base64sha256(var.base64sha256)}"
}

output "sha256_output" {
  value = "${sha256(var.base64sha256)}"
}

output "decoded_output" {
  value = "${base64decode(base64sha256(var.base64sha256))}"
}
