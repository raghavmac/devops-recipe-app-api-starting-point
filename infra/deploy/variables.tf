variable "region" {
  description = "Region name of AWS resources"
  default     = "eu-central-1"
}

variable "key" {
  description = "Unique Name to distinguish reource identifier"
  default     = "tf-state-deploy"
}

variable "prefix" {
  description = "Prefix for resources in AWS, example - abbrevation of project name"
  default     = "raa"
}

variable "project" {
  description = "Project name for tagging resources"
  default     = "recipe-app-api"
}

variable "contact" {
  description = "Contact name for tagging resources"
  default     = "manikandan.s"
}

variable "tf_state_bucket" {
  description = "Name of S3 bucket in AWS for storing TF state"
  default     = "devops-recipe-app-api-tf-state"
}

variable "tf_state_lock_table" {
  description = "Name of DynamoDB table for TF state locking"
  default     = "devops-recipe-app-api-tf-lock"
}