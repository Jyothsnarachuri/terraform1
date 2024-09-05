
resource "aws_instance" "dependent" {
    ami = "ami-04fdea8e25817cd69"
    instance_type = "t2.micro"
    key_name = "sunny"
    depends_on = [ aws_s3_bucket.dependent ]
}

resource "aws_s3_bucket" "dependent" {
    bucket = "junnuuuu"
   
}
