variable "region" {
  description = "IBM Cloud region"
  type        = string
  default     = "us-south"
}

variable "secret_word" {
  description = "Secret word injected as an environment variable into the Code Engine app"
  type        = string
  default = "test"
}