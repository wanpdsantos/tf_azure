variable "azure_region" {
  type        = string
  description = "MS Azure Cloud region to deploy resources"
}

################################
# Network Variables
################################
variable "bookyz_vpc_cidr" {
  description = "BOOKYZ VPC CIDR"
  type        = string
}

variable "private_subnet_backend" {
  description = "Private subnet for the backend applications"
  type        = string
}

variable "private_subnet_databases" {
  description = "Private subnet for the databases"
  type        = string
}

variable "public_subnet" {
  description = "Public subnet list"
  type        = string
}
