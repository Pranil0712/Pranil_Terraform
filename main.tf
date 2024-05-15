resource "aws_instance" "ins_t2micro" {
  ami           = "ami-013e83f579886baeb"
  instance_type = "t2.micro"

  tags = {
    Name = "amazon"
  }
}

/*source "aws_ec2_instance_state" "stop-start-ec2" {
  instance_id = "i-071eff67e78c62df2"
  state       = "stopped"
}*/

resource "aws_s3_bucket" "bucket-1" {
  bucket = "pranil-tera-buck"
  tags = {
    Name = "s3-bucket"
  }
}

resource "aws_s3_bucket_versioning" "versioning_buck" {
  bucket = "pranil-tera-buck"

  versioning_configuration {
    status = "Enabled"
  }
}