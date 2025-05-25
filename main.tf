resource "aws_vpc" "vpc01" {
  cidr_block = var.cidr_block

  tags = {
    "Name" = "myvpc01"
  }
}

resource "aws_internet_gateway" "myvpc-ig" {
  vpc_id = aws_vpc.vpc01.id
}

resource "aws_subnet" "pub-sub01" {
  vpc_id = aws_vpc.vpc01.id
  cidr_block = "192.168.1.0/24"
  availability_zone = "us-east-1b"

  tags = {
    "Name" = "pub-sub01"
  }
}

resource "aws_subnet" "pub-sub02" {
  vpc_id = aws_vpc.vpc01.id
  cidr_block = "192.168.2.0/24"
  availability_zone = "us-east-1a"

  tags = {
    "Name" = "pub-sub02"
  }
}

resource "aws_subnet" "pri-sub01" {
  vpc_id = aws_vpc.vpc01.id
  cidr_block = "192.168.3.0/24"
  availability_zone = "us-east-1a"

  tags = {
    "Name" = "pri-sub01"
  }
}

resource "aws_subnet" "pri-sub02" {
  vpc_id = aws_vpc.vpc01.id
  cidr_block = "192.168.4.0/24"
  availability_zone = "us-east-1b"

  tags = {
    "Name" = "pri-sub02"
  }
}
