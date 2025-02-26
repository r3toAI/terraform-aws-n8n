variable "prefix" {
  type        = string
  description = "Prefix to add to all resources"
  default     = "n8n"
}

variable "certificate_arn" {
  type        = string
  description = "Certificate ARN for HTTPS support"
  default     = "arn:aws:acm:eu-central-2:311141537066:certificate/f72c247a-17f8-48a0-a298-296bad22fe4d"
}

variable "url" {
  type        = string
  description = "URL for n8n (default is LB url), needs a trailing slash if you specify it"
  default     = "engine.r3to.org"
}

variable "desired_count" {
  type        = number
  description = "Desired count of n8n tasks, be careful with this to make it more than 1 as it can cause issues with webhooks not registering properly"
  default     = 1
}

variable "container_image" {
  type        = string
  description = "Container image to use for n8n"
  default     = "n8nio/n8n:1.80.3"
}

variable "fargate_type" {
  type        = string
  description = "Fargate type to use for n8n (either FARGATE or FARGATE_SPOT))"
  default     = "FARGATE_SPOT"
}