variable "zone_name" {
  type        = string
  default     = "paws81s.site"
  description = "description"
}

variable "root_block_device" {
    description = "description"
    type = object({
        volume_size = number
        volume_type = string
        delete_on_termination = bool
    })
}