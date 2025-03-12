variable "instance_type" {
    description = "type d'instance EC2"
    type = string 
    default = "t2.micro"

}


variable "public_subnet_id" {
    description = "ID de sous-réseau public" 
    type = string
    default = "subnet-0569faceb20623fe1"
}

variable "ami_id" {
    description = "ID de l'image AMI"
    type = string
    default = "ami-08b5b3a93ed654d19"
}


variable "public_ec2_sg_name" {
    description = "Nom du groupe de sécurité de l'instance publique ec2"
    type = string
    default = "webserver-ssh-sg"
}


