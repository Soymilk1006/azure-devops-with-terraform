variable "location" {
  type        = string
  description = "Azure Region Where all these resources will be provisioned"
  default     = "Australia Southeast"
}

variable "resource_group_name" {
  type        = string
  description = "This Variable defines the Resource Group"
  default     = "terraform-aks"
}

variable "environment" {
  type        = string
  description = "This variable defines the environment"
  #   default     = "dev"
}

variable "ssh_public_key" {
  #   default     = "~/.ssh/aks-prod/aksprodsshkey.pub"
  description = "This variable defines the SSH public key for Linux k8S"
}


variable "windows_admin_username" {
  type        = string
  default     = "azureuser"
  description = "This variable defines the Windows admin username k8s Windows"
}

variable "windows_admin_password" {
  type        = string
  default     = "Legend5330fewwfef?"
  description = "This variable defines the Window ADMIN password k8s"
}

