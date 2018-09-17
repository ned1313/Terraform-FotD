##############################################
# Function: trimspace
##############################################
##############################################
# Variables
##############################################
variable "trimspace" {
  default = "A string with tab     \t"
}

##############################################
# Resources
##############################################

##############################################
# Outputs
##############################################
output "1_trimspace_output" {
  value = "${trimspace(var.trimspace)}"
}
output "2_length" {
  value = "${length(var.trimspace)}"
}

output "3_length_trimspace" {
  value = "${length(trimspace(var.trimspace))}"
}

