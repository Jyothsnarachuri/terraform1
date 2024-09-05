data "aws_ami" "example" {
  executable_users = ["self"]
  most_recent      = true
  name_regex       = "server"
  owners           = ["self"]

  filter {
    name   = "name"
    values = ["server"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}
