terraform {
  required_providers {
    sonarqube = {
      source = "jdamata/sonarqube"
    }
  }
}

provider "sonarqube" {
    user   = var.sonarqube_user
    pass   = var.sonarqube_password
    host   = var.sonarqube_host
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
