resource "aws_instance" "server" {
  ami="ami-04fdea8e25817cd69"
  instance_type="t2.micro"
  key_name="sunny"
    subnet_id = aws_subnet.public.id
    vpc_security_group_ids = [aws_security_group.allow_tls.id]
    tags = {
      Name = "myec2"
    }

}
