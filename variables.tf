# OTC vars
variable "access_key" {
  type        = string
  description = "Auth Access Key"
  sensitive   = true
}

variable "secret_key" {
  type        = string
  description = "Auth Secret Key"
  sensitive   = true
}

variable "auth_url" {
  type        = string
  default     = "https://iam.eu-de.otc.t-systems.com:443/v3"
  description = "IAM Auth Url"
}

variable "tenant_name" {
  type        = string
  default     = "eu-de"
  description = "Name of the tenant"
}

variable "region" {
  type        = string
  default     = "eu-de"
  description = "Cloud Region"
}

variable "availability_zone" {
  type        = string
  default     = "eu-de-01"
  description = "Availability Zone"
}

variable "vpc_name" {
  type        = string
  default     = "quickstart-vpc"
  description = "Name of VPC"
}

variable "vpc_cidr" {
  type        = string
  default     = "192.168.0.0/16"
  description = "VPC network"
}

variable "subnet_name" {
  type        = string
  default     = "quickstart-subnet"
  description = "Subnetwork name"
}

variable "subnet_cidr" {
  type        = string
  default     = "192.168.1.0/24"
  description = "Sub Network CIDR"
}

variable "dns_list" {
  type        = list(string)
  default     = ["100.125.4.25", "8.8.8.8"]
  description = "list of DNS servers"
}

variable "subnet_gateway_ip" {
  type        = string
  default     = "192.168.1.1"
  description = "Subnet Gateway"
}

variable "secgroup_name" {
  type        = string
  default     = "quickstart-secgroup"
  description = "Secgroup name"
}

variable "image_name" {
  description = "Name of the image"
  default     = "Standard_Ubuntu_18.04_latest"
  type        = string
}

variable "flavor_id" {
  description = "ID of Flavor"
  default     = "c3.large.2"
  type        = string
}

variable "public_key" {
  description = "ssh public key to use"
  type        = string
  default     = ""
}
