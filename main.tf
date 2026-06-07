provider "aws" {
    region = "us-east-1"
}


resource "aws_instance" "name" {
    count         = 3
    ami           = "ami-091138d0f0d41ff90"
    instance_type = "t3.micro"
    tags         = {
        Name = "my-ec2-instance"
    }
  
}
