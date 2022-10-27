resource "aws_subnet" "publicsubnet1" {
  vpc_id                  = aws_vpc.vpc-1.id
  cidr_block              = var.cidr_public1
  availability_zone       = var.az
  map_public_ip_on_launch = "true"

  tags = {
    Name = "publicsubnet1"
  }
}
