resource "aws_subnet" "public_subnet" {
    vpc_id = aws_vpc.my_vpc.id
    cidr_block = "192.168.12.0/26"
    availability_zone = "us-east-1c"
    map_public_ip_on_launch = true
    tags = {
        Name = "publicsubnet"
    }
}