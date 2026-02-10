variable "role" {
  type    = string
  default = "coder"
}

variable "vpcname" {
  type = string 
  default = "indiavpc"

}

variable "sshport" {
  type = number 
  default = 22
}
variable "enabled"  {
  default = true 

}

variable "mylist" {
  type = list(string)
  default =["harish","kiran","satish"]

}

variable "mymap" {

  type =map
  default = {
    name = "aarish"
    area = "hyd"
  }

}

