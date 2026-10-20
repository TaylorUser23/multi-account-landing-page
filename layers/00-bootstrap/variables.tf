variable "region" {
  description = "Home region for the landing zone."
  type        = string
  default     = "us-east-1"
}

variable "name_prefix" {
  description = "Short prefix used in resource names."
  type        = string
  default     = "lz"
}