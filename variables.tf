variable "sonarqube_user" {
  description = "The username to authenticate to SonarQube"
  type        = string
  default     = "admin"  
}

variable "sonarqube_password" {
  description = "The password to authenticate to SonarQube"
  type        = string
  sensitive   = true
}

variable "sonarqube_host" {
  description = "The URL of the SonarQube instance"
  type        = string
  default     = "http://localhost:9000"  
}

variable "sonarqube_token" {
  description = "The SonarQube authentication token"
  type        = string
  sensitive   = true
 # default     = "sqa07537e5f15b6396a61de8144769b935424c3709"  
}

variable "project_name" {
  description = "The name of the project"
  type        = string
  default     = "my_project"
}

variable "project_key" {
  description = "The key of the project"
  type        = string
  default     = "my_project_key"
}

variable "qualitygate_name" {
  description = "The name of the quality gate"
  type        = string
  default     = "my_qualitygate"
}

variable "coverage_threshold" {
  description = "The coverage threshold for the quality gate"
  type        = number
  default     = 30
}
