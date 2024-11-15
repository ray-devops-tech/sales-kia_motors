resource "aws_instance" "instance-dev" {
   ami = "ami-012abc345def"
   instance_type = "t2.micro"

   type = {
      Name = "pub-instance-1"
      Env = "dev"
     }
}

