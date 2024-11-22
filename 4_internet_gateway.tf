resource "aws_internet_gateway" "pc_ig1" {
  vpc_id = aws_vpc.pc_vpc1.id

  tags = {
    "Name" = "PC_ig1"
  }

}