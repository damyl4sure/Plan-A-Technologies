variable "vpc_cidr" {
    description = "VPC CIDR"
    type = string
    default = "10.11.0.0/16"
}

variable "pri_subnet_cidr" {
    description = "Private subnet CIDR"
    type = list
    default = ["10.11.1.0/24", "10.11.2.0/24", "10.11.3.0/24"]
}
variable "pub_subnet_cidr" {
    description = "Public subnet CIDR"
    type = list
    default = ["10.11.4.0/24", "10.11.5.0/24", "10.11.6.0/24"]
}
