provider "aws" {
  region = "us-east-1"
}

variable "myvpc" {
  type        = string
  description = "The ID of the VPC to use for the resources."
  default     = "terraformvpc"
}


variable "sshport" {
  type        = number
  description = "The port for SSH access to the instance."
  default     = 22

}

resource "aws_vpc" "myvpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = var.myvpc
  }
}

output "myoutput" {
  value = aws_vpc.myvpc.id
}
