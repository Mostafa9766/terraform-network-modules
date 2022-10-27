resource "aws_vpc" "vpc-1" {
  cidr_block = var.vpc_cidr
tags = {
    Name = "vpc1"
  }
  provisioner "local-exec" {
command = "echo ${self.id} > provisioner.txt"
}    
  }
  

