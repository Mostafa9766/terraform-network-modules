# public subnet route
resource "aws_route_table" "publicroute" {
  vpc_id = aws_vpc.vpc-1.id
  tags = {
    Name = "publicroute"
  }
}
resource "aws_route" "routs" {
  route_table_id            = aws_route_table.publicroute.id
  destination_cidr_block    =  "0.0.0.0/0"
  gateway_id = aws_internet_gateway.internetgetaway.id
  depends_on                = [aws_route_table.publicroute]
}
#table association for public route table
resource "aws_route_table_association" "public1" {
  subnet_id      = aws_subnet.publicsubnet1.id
  route_table_id = aws_route_table.publicroute.id
}