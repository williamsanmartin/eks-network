variable "project_name" {
  type = string
}

variable "region" {
  type = string
}

variable "vpc_cidr" {
  type        = string
  description = "CIDR principal"

}

variable "vpc_addition_cidr" {
  type        = list(string)
  description = "CIDR adicional"
}

variable "public_subnets" {
  description = "Lista de Public Subnets da VPC"
  type = list(object({
    name              = string
    cidr              = string
    availability_zone = string
  }))
}

variable "private_subnets" {
  description = "Lista de Private Subnets da VPC"
  type = list(object({
    name              = string
    cidr              = string
    availability_zone = string
  }))
}


variable "databases_subnets" {
  description = "Lista de Databases Subnets da VPC"
  type = list(object({
    name              = string
    cidr              = string
    availability_zone = string
  }))
}