resource "aws_internet_gateway" "internetgetaway" {
  vpc_id = aws_vpc.vpc-1.id
}
