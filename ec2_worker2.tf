resource "aws_instance" "pc_worker2" {
  #t2.micro: (Linux) ami-0942ecd5d85baa812 ; t2.medium (Ubuntu) - ami-0ea3c35c5c3284d82
  ami           = "ami-0ea3c35c5c3284d82" 
  instance_type = "t2.medium"
  subnet_id = aws_subnet.pc_subnet1.id
  vpc_security_group_ids = [aws_security_group.pc_sg1.id]
  key_name = "AWS_PC1"

  tags = {
    Name = "PC-Worker2"
  }
}