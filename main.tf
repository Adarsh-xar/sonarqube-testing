terraform {
  required_providers {
    sonarqube = {
      source = "jdamata/sonarqube"
    }
  }
}

# provider "sonarqube" {
#     token  = "sqa_e5254aa3c164ce7c0f721302926d8599d9594db7"
#     host   = "http://127.0.0.1:9000"
# }


# provider "sonarqube" {
#   user   = var.sonarqube_user
#   pass   = var.sonarqube_password
#   host   = var.sonarqube_host
#   token  = var.sonarqube_token  
# }


provider "sonarqube" {
  user   = var.sonarqube_user
  pass   = var.sonarqube_password
  host   = var.sonarqube_host
#   token  = var.sonarqube_token  
 }

resource "sonarqube_project" "my_project" {
  name       = var.project_name
  project    = var.project_key
  visibility = "public"
}

resource "sonarqube_qualitygate" "main" {
  name = var.qualitygate_name

  condition {
    metric    = "new_coverage"
    op        = "LT"
    threshold = var.coverage_threshold
  }
}

resource "sonarqube_qualitygate_project_association" "main" {
  gatename   = sonarqube_qualitygate.main.id
  projectkey = sonarqube_project.my_project.project
}
