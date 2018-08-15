##############################################
# Function: map
##############################################
##############################################
# Variables
##############################################

##############################################
# Resources
##############################################

##############################################
# Outputs
##############################################

output "1_basic_map" {
  value = "${map("key1","value1","key2","value2")}"
}

output "2_map_lists" {
  value = "${map("life",list("42"),"the universe",list("six","times","seven"))}"
}

output "3_empty_map" {
  value = "${map()}"
}

output "4_nested_map" {
  value = "${
    map(
      "nested1", map("n1k1","n1v1","n1k2","n1v2"),
      "nested2", map("n2k1","n2v1","n2k2","n2v2")
    )}"
}

output "5_triple_nested" {
  value = "${
    map(
      "level1", map(
        "level2", map(
          "level3","infinity"
        )
      )
    )
  }"
}
