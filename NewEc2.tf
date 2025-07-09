terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.5.0"
    }
  }
}
provider "aws" {
  region = "eu-west-1"
}
resource "aws_instance" "our_vm"{
    instance_type = "t2.micro"
    ami = "ami-01f23391a59163da9"
    tags = {
        Name "exampleEc2"
    }
}
