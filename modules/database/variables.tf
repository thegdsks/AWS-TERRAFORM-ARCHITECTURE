variable "private_subnets" {
  description = "A list of private subnet IDs for the RDS instance"
  type        = list(string)
}

variable "vpc_id" {
  description = "The VPC ID."
}

variable "web_sg" {
  description = "The security group ID for the web servers."
}

variable "db_instance_class" {
  description = "The instance type of the RDS instance."
  default     = "db.t3.micro"
}

variable "db_username" {
  description = "Username for the RDS database."
}

variable "db_password" {
  description = "Password for the RDS database."
}
