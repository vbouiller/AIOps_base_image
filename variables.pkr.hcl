# Image settings
variable "image_offer" {
  description = "Azure base image offer"
  type        = string
}

variable "image_publisher" {
  description = "Azure base image publisher"
  type        = string
}

variable "image_sku" {
  description = "Azure base image sku"
  type        = string
}

variable "image_os_type" {
  description = "OS type for Packer to automatically configure authentication credentials for the provisioned machine. Defaults to 'Linux'"
  type        = string
  default     = "Linux"
}

variable "image_vm_size" {
  description = "Azure VM size for the image. Defaults to 'Standard_DS2_v2"
  type        = string
  default     = "Standard_DS2_v2"
}

variable "image_location" {
  description = "Azure region where the image will be built"
  type        = string
}

variable "image_name_prefix" {
  description = "Prefix of the image name, will be followed by the timestamp"
  type        = string
}

variable "image_rg" {
  description = "Name of the existing resource group where the image will be saved"
  type        = string
}

variable "hcp_packer_bucket_name" {
  description = "HCP Packer destination Bucket name"
  type        = string
}

variable "hcp_packer_bucket_description" {
  description = "HCP Packer destination Bucket name description"
  type        = string
}


# Azure config
variable "azure_client_id" {
  type = string
}

variable "azure_client_secret" {
  type      = string
  sensitive = true
}

variable "azure_subscription_id" {
  type = string
}

variable "azure_tenant_id" {
  type = string
}

# Datadog config
variable "dd_api_key" {
  description = "Datadog API Key to be injected by the shell provisionner"
  type        = string
  sensitive   = true
}

variable "dd_site" {
  description = "The site of the Datadog intake to send Agent data to. Defaults to 'datadoghq.com'"
  type        = string
  default     = "datadoghq.com"
}