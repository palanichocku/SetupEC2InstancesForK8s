resource "aws_subnet" "pc_subnet1" {
  vpc_id                  = aws_vpc.pc_vpc1.id
  cidr_block              = "10.0.2.0/24"
  availability_zone       = "us-east-2a"
  map_public_ip_on_launch = true

  tags = {
    "Name" = "PC-subnet1"
  }
}