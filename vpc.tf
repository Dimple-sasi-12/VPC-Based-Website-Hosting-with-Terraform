resource "aws_vpc" "my_vpc" {
    cidr_block = "192.168.12.0/24"
    tags = {
        Name = "myvpc"
    }
}