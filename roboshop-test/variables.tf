variable "ami_id"{
    default = "ami-09c813fb71547fc4f"
}
variable "sg_ids"{
    default = "sg-0c467acb91cf389b7"
}
variable "instance_type"{
    default = "t3.micro"
}
variable "tags" {
    default = {
        Name = "Module-demo"
    }
}