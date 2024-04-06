resource "aws_db_subnet_group" "db" {
  name       = "my-db-subnet-group"
  subnet_ids = var.private_subnets

  tags = {
    Name = "my-db-subnet-group"
  }
}

resource "aws_security_group" "db" {
  name        = "db-sg"
  description = "Allow MySQL inbound traffic"
  vpc_id      = var.vpc_id

  ingress {
    from_port   = 3306
    to_port     = 3306
    protocol    = "tcp"
    security_groups = [var.web_sg]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "db-sg"
  }
}

resource "aws_db_instance" "default" {
  identifier        = "mydbinstance"
  engine            = "mysql"
  engine_version    = "8.0"
  instance_class    = var.db_instance_class
  allocated_storage = 20
  db_subnet_group_name = aws_db_subnet_group.db.name
  vpc_security_group_ids = [aws_security_group.db.id]

  username = var.db_username
  password = var.db_password
  skip_final_snapshot = true
}

