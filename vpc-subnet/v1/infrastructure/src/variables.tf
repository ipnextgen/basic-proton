variable "name" {
  description = "The name of this environment"
  type        = string
}

variable "vpc_cidr" {
  description = "The CIDR range for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "subnet_one_cidr" {
  description = "The CIDR range for private subnet one"
  type        = string
  default     = "10.0.128.0/18"
}