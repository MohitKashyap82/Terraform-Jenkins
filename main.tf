provider "aws" {
    region = "us-east-1"  
}

resource "aws_instance" "foo" {
  ami           = "ami-05fa00d4c63e32376" # us-west-2
  instance_type = "t2.micro"
  tags = {
      Name = "TF-Instance"
  }
}

resource "aws_s3_bucket" "example" {
  bucket = "my-tf-test-bucket-24081982"

  tags = {
    Name        = "Mohit Test bucket"
    Environment = "Dev"
  }
}
