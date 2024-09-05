
resource "aws_instance" "dev" {
    ami = "ami-04fdea8e25817cd69"
    instance_type = "t2.micro"
    key_name = "sunny"
    tags = {
      Name = "server"
    }
}

#command terraform import aws_instance.dev i-0e3f670f4ee619528
