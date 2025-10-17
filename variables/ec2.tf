resource "aws_instance" "terraform" {
    ami = var.ami_id
    instance_type = var.instance_type
    vpc_security_group_ids = [aws_security_group.allow.id]

    tags = var.ec2_tags
}

resource "aws_security_group" "allow" {
  name   = var.sg_name
  egress {
    from_port        = var.egress_from_port  # from port 0 to port 0 means all ports
    to_port          = var.egress_to_port
    protocol         = var.protocol  # -1 means all protocol
    cidr_blocks      = var.cidr  # internet
    
  }
  ingress {
    from_port        = var.ingress_from_port  # from port 0 to port 0 means all ports
    to_port          = var.ingress_to_port
    protocol         = var.protocol  # -1 means all protocol
    cidr_blocks      = ["0.0.0.0/0"]  # internet
  }
}




