variable "project" {
    default = "roboshop"
}
variable "environment" {
    default = "dev"
}


variable "ami_id" {
    type = string
  default     = "ami-09c813fb71547fc4f"
}

variable "instance_type" {
    type = string
  default     = "t3.micro"
}

variable "common_tags" {
    type = map
    default = {
        Terraform = "true"
        project = "roboshop"
        Environment = "dev"
    }
}

variable "sg_name" {
    type = string
    default = "allow"
    description = "security group name"
}

variable "cidr" {
    default = ["0.0.0.0/0"]
}

variable "ingress_from_port" {
    default = 0
}
variable "ingress_to_port" {
    default = 0
}
variable "egress_from_port" {
    default = 0
}
variable "egress_to_port" {
    default = 0
}
variable "protocol"{
    type = string
    default = "-1"
}