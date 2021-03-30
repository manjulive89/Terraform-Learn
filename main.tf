provider "aws" {
  region = "us-east-1"
}

data "aws_vpc" "web" {
  id = "vpc-035cfb55934681283"
}

data "aws_subnet" "public" {
  id = "subnet-06f478af15180f3b4"
}


resource "aws_instance" "test" {
  instance_type = "t2.micro"
  ami = "ami-0915bcb5fa77e4892"
  security_groups = [ "sg-0263e6f2a528167b8" ]
 subnet_id = "subnet-06f478af15180f3b4"
 tags = {
   "Name" = "test"
 }
 }