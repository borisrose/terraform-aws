resource "aws_security_group" "public_ec2_sg" {
    description = "Groupe de securite associe aux instances ec2 publiques"
    name = var.public_ec2_sg_name

    # Autorisation concernant le trafic entrant
    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = [ "0.0.0.0/0"]
    }

    # Autorisation concernant le trafic sortant
    egress  {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = [ "0.0.0.0/0" ]
    }
}

resource "aws_instance" "public_instance" {
    ami = var.ami_id
    instance_type = var.instance_type
    subnet_id = var.public_subnet_id
    vpc_security_group_ids = [ aws_security_group.public_ec2_sg.id  ]
    tags = {
       Name = "MyPublicInstance" 
    }
}
