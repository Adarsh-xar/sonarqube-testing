variable "sonarqube_user" {
  description = "The username to authenticate to SonarQube"
  type        = string
  default     = "admin"  
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
}
variable "sonarqube_password" {
  description = "password"
  type = string
  sensitive = true
  
}


variable "project_name" {
  description = "The name of the project"
  type        = string
}

variable "project_key" {
  description = "The key of the project"
  type        = string
  
}

variable "qualitygate_name" {
  description = "The name of the quality gate"
  type        = string
  
}

variable "coverage_threshold" {
  description = "The coverage threshold for the quality gate"
  type        = number
 
}
