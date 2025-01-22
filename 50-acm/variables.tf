variable "project_name" {
  default = "expense"
}

variable "environment" {
  default = "dev"
}

variable "common_tags" {
  default = {
    Project     = "project"
    Terraform   = "true"
    Environment = "dev"
  }
}


variable "zone_name" {
  default = "vardhanglobal.online"
}

variable "zone_id" {
  default = "Z0037057DV8PD1YP3QYK"
}