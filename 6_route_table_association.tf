resource "aws_route_table_association" "pc_rt_association" {
  subnet_id      = aws_subnet.pc_subnet1.id
  route_table_id = aws_route_table.pc_rt1.id
}