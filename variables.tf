variable "name" {
  type        = string
  description = "Bucket's name."
}

variable "enable_versioning" {
  type        = bool
  description = "Enable versioning."
  default     = false
}

variable "acl" {
  type        = string
  description = "Bucket's ACL."
  default     = ""
}

variable "policy" {
  type        = string
  description = "Bucket's policy."
  default     = ""
}
