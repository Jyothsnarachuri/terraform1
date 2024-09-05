
resource "aws_instance" "test" {
    ami = "ami-04fdea8e25817cd69"
    instance_type = "t2.micro"
    availability_zone = "us-west-1a"
    key_name = "sunny"
    count = length(var.test) #it will print 3
    
  tags = {
    #Name = "dev-1"
    #Name = "web-${count.index}"
    Name= var.test[count.index]
  }
}

variable "test" {
    type = list(string)
    default = [ "dev","test","prod"]

}
