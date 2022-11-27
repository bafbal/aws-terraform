terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region     = "eu-central-1"
  access_key = ""
  secret_key = ""
}

resource "aws_instance" "ec2" {
  ami           = "ami-076309742d466ad69"
  instance_type = "t2.micro"
}

output "ip_of_ec2" {
  value = aws_instance.ec2.public_ip
}
