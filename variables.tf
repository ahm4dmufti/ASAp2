variable "student_name" {
  description = "Group members used for tagging"
  type        = string
  default     = "Ahmad Elmufti, Seraj ElFaitouri, Aya Abuoud"
}

variable "location" {
  description = "Azure region to deploy into"
  type        = string
  default = "italynorth"
}

variable "docker_image" {
  description = "Docker Hub image to run in the container"
  type        = string
  default     = "ahmadelmufti/cloudscale-proj2:latest"
}

variable "dns_label" {
  description = "DNS name label for the public IP"
  type        = string
  default     = "asa-proj2-aci"
}