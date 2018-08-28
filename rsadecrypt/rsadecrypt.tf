##############################################
# Function: rsadecrypt
##############################################
##############################################
# Variables
##############################################
variable "encrypted_string_path" {}

variable "private_key_path" {}


##############################################
# Resources
##############################################
##############################################
# Outputs
##############################################
output "rsadecrypt_output" {
  value = "${rsadecrypt(file(var.encrypted_string_path),file(var.private_key_path))}"
}
