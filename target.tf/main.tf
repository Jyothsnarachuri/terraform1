
resource "aws_instance" "dependent" {
    ami = "ami-04fdea8e25817cd69"
    instance_type = "t2.micro"
    key_name = "sunny"
}

resource "aws_s3_bucket" "dependent" {
    bucket = "junnuuuuuuu"
}

#If we want to create or destroy specific resource in terraform configuration file we can use target resource block examplebelow
#terraform apply --target=aws_s3_bucket.dependent
#terraform destroy --target=aws_s3_bucket.dependent
