resource "aws_vpc" "a-vpc" {
   cidr = "10.0.0.0/16"

   tags = {
      Name = "public-subnet"
      Env = "dev"
      application = "furniture"
      LOB = "sales"
}
}

<<<<<<< HEAD
resource "aws_eip"" "eip-1" {
  vpc = aws_vpc.a-vpc.id

  }
=======
resource "aws_subnet" "pub-sn-1" {
   vpc_id = aws_vpc.a-vpc.id
   cidr_block = "10.0.1.0/24"
   avaialbility_zone = "us-east-1a"
   map_public_ip_on_launch = true

   tags = {
      Name = "dev-public-sn-1"

   }
}

# change update for git rebase

resource "aws_subnet" "pvt-sn-1" {
  vpc_id = aws_vpc.a-vpc.id
  cidr_block = "10.0.2.0/24"
  availability_zone = "us-east-1b"

  tags = {
    Name = "dev-pvt-sn-1"

  }



}



} 
>>>>>>> sales-kia/feature1/dev
