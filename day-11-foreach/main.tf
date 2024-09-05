
resource "aws_instance" "test" {
    ami = "ami-04fdea8e25817cd69"
    instance_type = "t2.micro"
    availability_zone = "us-west-1a"
    key_name = "sunny"
    for_each = toset(var.test)
    
  tags = {
    #Name = "dev-1"
    Name = each.value
    
  }
}

variable "test" {
    type = list(string)
    default = [ "dev","prod"]
  
}
