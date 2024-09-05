
resource "aws_instance" "test" {
    ami = "ami-04fdea8e25817cd69"
    instance_type = "t2.micro"
    key_name = "sunny"
}
