# Ceci deploi une instance EC2 du type specifié

resource "aws_instance" "web" {
  ami           = "ami-07e17b58812e0c7c2"
  instance_type = var.instance

  tags = {
    Name = "HelloWorld"
  }
}