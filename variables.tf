variable "bucket_name" {
  description = "Name of the S3 bucket"
  type        = string
}

# variable "application_name" {
#   description = "Application name for tagging"
#   type        = string
# }

# variable "project_name" {
#   description = "Project name for tagging"
#   type        = string
# }

variable "seq_id" {
  description = "Sequence ID for naming"
  type        = string
}

# variable "mandatory_tags" {
#   description = "Mandatory tags for all resources"
#   type        = map(string)
# }

# variable "optional_tags" {
#   description = "Optional tags for all resources"
#   type        = map(string)
#   default     = {}
# }