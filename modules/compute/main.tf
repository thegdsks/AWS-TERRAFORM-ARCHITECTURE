resource "aws_security_group" "web" {
  name        = "web-sg"
  description = "Allow HTTP inbound traffic"
  vpc_id      = var.vpc_id

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "web-sg"
  }
}

resource "aws_instance" "instance1" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  subnet_id              = var.public_subnets[0]
  vpc_security_group_ids = [aws_security_group.web.id]
  key_name               = var.key_name

  tags = {
    Name = var.instance1_name
  }
}

resource "aws_instance" "instance2" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  subnet_id              = var.public_subnets[1]
  vpc_security_group_ids = [aws_security_group.web.id]
  key_name               = var.key_name

  tags = {
    Name = var.instance2_name
  }
}

