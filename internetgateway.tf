resource "aws_internet_gateway" "internet_gateway" {
    vpc_id = aws_vpc.my_vpc.id
    tags = {
        Name = "IGW"
    }
}