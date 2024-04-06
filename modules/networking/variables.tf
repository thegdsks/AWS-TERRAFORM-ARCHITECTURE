variable "vpc_cidr" {
  description = "The CIDR block for the VPC."
}

variable "public_subnet_cidrs" {
  description = "A list of CIDR blocks for the public subnets."
  type        = list(string)
}

variable "private_subnet_cidrs" {
  description = "A list of CIDR blocks for the private subnets."
  type        = list(string)
}

variable "availability_zones" {
  description = "A list of availability zones in the region."
  type        = list(string)
}
