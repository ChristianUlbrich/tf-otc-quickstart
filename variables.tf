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
  type = string
  # TODO: figure out a possible list of working values
  # instead of sniffing -> https://console.otc.t-systems.com/ecm/?region=eu-de#/ecs/createVm
  # actually: https://console.otc.t-systems.com/ecm/rest/v2/ims/combine/images
  default     = "Standard_Ubuntu_24.04_amd64_uefi_latest"
  description = "Name of the image"
}

variable "flavor_id" {
  type = string
  # for a list of possible values -> https://console.otc.t-systems.com/ecm/?region=eu-de#/ecs/createVm
  default     = "x1.xlarge.2"
  description = "ID of Flavor"
}

variable "public_key" {
  type        = string
  description = "ssh public key to use"
}
