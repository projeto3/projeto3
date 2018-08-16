provider "aws" {
  access_key = "$VAR_ACCESS_KEY"
  secret_key = "$VAR_SECRET_KEY"
  region     = "$VAR_REGION"
}

resource "aws_instance" "example" {
  ami           = "ami-04169656fea786776"
  instance_type = "t2.micro"
  subnet_id     = "subnet-04ddf27ca8d47df64"
  key_name	= "projeto3"
}
