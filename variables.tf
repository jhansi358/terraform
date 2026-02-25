variable "inbound" {
    default = 0
    type = number
}

variable "cidr_blocks" {
    type = list
    default = ["0.0.0.0/0"]

}

variable "tag" {
    type = map
    default = {
        Name = all-sg
    }
}

variable "ami" {
    type = string
    default = "ami-0b4f379183e5706b9"
}
