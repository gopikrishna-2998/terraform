variable "instances" {
    default = ["mongodb","redis","rabbitmq","mysql","catalogue","user","cart","shipping","payment","frontend"]
}
variable "zone_id" {
    default = "Z0379910K30ZWY5SALMW"
}
variable "domain_name" {
    default = "gopi29.fun"
}