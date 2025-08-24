//VPC
resource "aws_vpc" "this_vpc" {
  cidr_block = var.cidr-blocks[0]

  tags = {
    Name = "${var.names-network[0]}-project"
  }
}

//SUBNETS
resource "aws_subnet" "public-subnet-a" {
  vpc_id = aws_vpc.this_vpc.id

  cidr_block              = var.cidr-blocks[1]
  availability_zone       = var.availability_zone[0]
  map_public_ip_on_launch = true

  tags = {
    Name = "${var.names-network[1]}-subnet-project-b"
  }
}

resource "aws_subnet" "public-subnet-b" {
  vpc_id = aws_vpc.this_vpc.id

  cidr_block              = var.cidr-blocks[2]
  availability_zone       = var.availability_zone[1]
  map_public_ip_on_launch = true

  tags = {
    Name = "${var.names-network[1]}-subnet-project-b"
  }
}

//SECURITY GROUPS
resource "aws_security_group" "security-group-frontend" {
  vpc_id = aws_vpc.this_vpc.id

  tags = {
    Name = "${var.names-network[2]}-security-group-project"
  }
}

//INGRESS FRONTEND
resource "aws_vpc_security_group_ingress_rule" "ingress-allow-port-80-frontend" {
  security_group_id = aws_security_group.security-group-frontend.id
  cidr_ipv4         = "0.0.0.0/0"
  ip_protocol       = "tcp"
  from_port         = 8080
  to_port           = 8080
}

//INTERNET GATEWAY
resource "aws_internet_gateway" "project-internet-gateway" {
  vpc_id = aws_vpc.this_vpc.id
}

resource "aws_route_table" "public-route" {
  vpc_id = aws_vpc.this_vpc.id
}

resource "aws_route" "public-internet-access" {
  route_table_id         = aws_route_table.public-route.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.project-internet-gateway.id
}

resource "aws_route_table_association" "association-public-subnet-a" {
  subnet_id      = aws_subnet.public-subnet-a.id
  route_table_id = aws_route_table.public-route.id
}

resource "aws_route_table_association" "association-public-subnet-b" {
  subnet_id      = aws_subnet.public-subnet-b.id
  route_table_id = aws_route_table.public-route.id
}
