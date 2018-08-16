
resource "aws_instance" "projeto3" {
  ami           = "ami-04169656fea786776"
  instance_type = "t2.micro"
  subnet_id     = "subnet-04ddf27ca8d47df64"
  key_name	    = "projeto3"
}
