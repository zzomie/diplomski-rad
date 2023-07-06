resource "aws_instance" "diplomski" {
  ami           = "ami-04e601abe3e1a910f"
  instance_type = "t2.micro"

  tags = {
    Name = "diplomski"
  }
}

resource "aws_security_group" "diplomski_sg" {
  name        = "diplomski-sg"
  description = "Security group for diplomski instance"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

}