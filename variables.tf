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

variable "block_public_acls" {
  type        = bool
  description = "Whether Amazon S3 should block public ACLs for this bucket."
  default     = true
}

variable "block_public_policy" {
  type        = bool
  description = "Whether Amazon S3 should block public bucket policies for this bucket."
  default     = true
}

variable "ignore_public_acls" {
  type        = bool
  description = "Whether Amazon S3 should ignore public ACLs for this bucket."
  default     = true
}

variable "restrict_public_buckets" {
  type        = bool
  description = "Whether Amazon S3 should restrict public bucket policies for this bucket."
  default     = true
}
