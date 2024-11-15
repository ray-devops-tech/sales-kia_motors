resource "aws_vpc" "a-vpc" {
   cidr = "10.0.0.0/16"

   tags = {
      Name = "public-subnet"
      Env = "dev"
      application = "furniture"
      LOB = "sales"
}
}

