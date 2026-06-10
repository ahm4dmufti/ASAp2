resource "azurerm_resource_group" "this" {
  name     = "asa-proj2-aci-rg"
  location = var.location

  tags = {
    Project     = "Project2"
    Environment = "production"
    StudentName = var.student_name
  }
}

resource "azurerm_container_group" "this" {
  name                = "asa-proj2-aci"
  location            = azurerm_resource_group.this.location
  resource_group_name = azurerm_resource_group.this.name
  os_type             = "Linux"
  ip_address_type     = "Public"
  dns_name_label      = var.dns_label
  restart_policy      = "Always"

  container {
    name   = "cloudscale-web"
    image  = var.docker_image
    cpu    = "0.5"
    memory = "1.5"

    ports {
      port     = 80
      protocol = "TCP"
    }
  }

  tags = {
    Project     = "Project2"
    Environment = "production"
    StudentName = var.student_name
  }
}