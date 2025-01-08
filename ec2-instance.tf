# resource "aws_security_group" "security_group" {
#     name = "allow http and ssh"
#     vpc_id = aws_vpc.my_vpc.id
#     ingress {
#         from_port = 80
#         to_port = 80
#         protocol = "tcp"
#         cidr_blocks = ["0.0.0.0/0"]
#     }
#     ingress {
#         from_port = 22
#         to_port = 22
#         protocol = "tcp"
#         cidr_blocks = ["0.0.0.0/0"]
#     }
#     egress {
#         from_port = 0
#         to_port = 0
#         protocol = "-1"
#         cidr_blocks = ["0.0.0.0/0"]
#     }
#     tags = {
#         Name = "http-sg"
#     }
# }


#  resource "aws_instance" "ec2_instance" {
#      ami = "ami-01816d07b1128cd2d"
#      instance_type = "t2.micro"
#      security_groups = [aws_security_group.security_group.id]
#      subnet_id = aws_subnet.public_subnet.id
#  tags = {
#     Name = "linux"
#  }
#  }