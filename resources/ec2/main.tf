provider "aws" {
  region = "us-east-1"
}
variable "ec2_ami" {
  type        = string
  description = "The AMI ID to use for the EC2 instance."
  default     = "ami-0efee5160a1079475" # Example AMI ID, replace with a valid one for your region
}

resource "aws_instance" "ec2" {
  ami           = var.ec2_ami
  instance_type = "t3.micro"

  tags = {
    Name = "MyEC2Instance"
  }
}

