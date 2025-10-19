resource "aws_instance" "terraform" {
    ami = var.ami_id
    instance_type = local.instance_type
    vpc_security_group_ids = [aws_security_group.allow.id]

    tags = merge(
      var.common_tags,
      {
        Name = "${local.common_name}-local-demo"
      }
    )
}

resource "aws_security_group" "allow" {
  name   = "${local.common_name}-allow"
  egress {
    from_port        = 0  # from port 0 to port 0 means all ports
    to_port          = 0
    protocol         = "-1"  # -1 means all protocol
    cidr_blocks      = ["0.0.0.0/0"]  # internet
    
  }
  ingress {
    from_port        = 0  # from port 0 to port 0 means all ports
    to_port          = 0
    protocol         = "-1"  # -1 means all protocol
    cidr_blocks      = ["0.0.0.0/0"]  # internet
  }

  tags = merge(
      var.common_tags,
      {
        Name = "${local.common_name}-local-demo"
      }
  )
}




