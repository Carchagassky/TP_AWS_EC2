resource "aws_instance" "esieeit_server_groupe{gobelinsserver2}" {
  ami           = "ami-0953476d60561c955"  
  instance_type = "t2.micro"
  key_name      = "gobelins"
  tags = {
    edu = "esieeit-groupe{gobelins}"
  }
}


output "public_ip" {
  value = aws_instance.esieeit_server_groupe{gobelins}.public_ip
  
}
