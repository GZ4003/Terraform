variable "instance_type" {
  type        = string 
  description = "Instance type"
  default     = "c5.large"
}

output "web_id" {
  value = aws_instance.VM1.arn
}

data "aws_region" "current" {}

resource "aws_instance" "VM1" {
  ami           = "ami-0c55b159cbfafe235"
  instance_type = var.instance_type
}

resource "aws_instance" "V2" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = var.instance_type
}

output "region" {
  value = data.aws_region.current.name
}

