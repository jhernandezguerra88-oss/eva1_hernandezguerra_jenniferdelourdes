locals {
  portal_user_data = templatefile(
    "${path.module}/templates/user_data_v1.sh.tpl",
    {
      student_name   = var.student_name
      student_number = tostring(var.student_number)
      environment    = "fase1"
      portal_version = "v1"
      project_name   = "NexoAndes Portal Operacional"
    }
  )
}

module "network" {
  source       = "../../modules/network"
  project_name = var.project_name
  vpc_cidr     = var.vpc_cidr
  subnet_cidr  = var.subnet_cidr
}

module "compute" {
  source            = "../../modules/compute"
  project_name      = var.project_name
  subnet_id         = module.network.subnet_id
  security_group_id = module.network.security_group_id
  portal_user_data  = local.portal_user_data
}