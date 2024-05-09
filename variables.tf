variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-2"
}

variable "az_names" {
  description = "AWS availability zones"
  type        = list(string)
  default     = ["us-east-2a", "us-east-2b", "us-east-2c"]
}

variable "access_key" {
  description = "AWS ACCESS KEY ID"
  type        = string
}

variable "secret_key" {
  description = "AWS SECRET Key"
  type        = string
}

variable "token" {
  description = "AWS TOKEN"
  type        = string
}

