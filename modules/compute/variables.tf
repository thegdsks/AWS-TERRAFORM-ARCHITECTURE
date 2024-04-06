variable "instance1_name" {
  description = "Name for the first EC2 instance"
}

variable "instance2_name" {
  description = "Name for the second EC2 instance"
}

variable "public_subnets" {
  description = "A list of public subnet IDs where EC2 instances will be launched"
  type        = list(string)
}

variable "vpc_id" {
  description = "The VPC ID."
}

variable "ami_id" {
  description = "The AMI ID to use for the instances."
}

variable "instance_type" {
  description = "The instance type of the EC2 instance."
  default     = "t2.micro"
}

variable "key_name" {
  description = "The key name to use for the instance."
}
