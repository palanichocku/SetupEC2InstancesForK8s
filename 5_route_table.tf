resource "aws_route_table" "pc_rt1" {
  vpc_id = aws_vpc.pc_vpc1.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.pc_ig1.id
  }

  tags = {
    "Name" : "PC_rt1"
  }
}