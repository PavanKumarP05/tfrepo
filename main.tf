variable "var1" {
    type = list
    default = ["mygrp1" , "mygrp2" , "mygrp3"]
}



output "outvars1" {
    value = [for i in var.var1 : upper(i)]
}


output "outvars2" {
    value = [for i in var.var1 : upper(i) if length(i) > 6]
}
