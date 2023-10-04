provider "yandex" {
  #version                  = ">= 0.35.0"
  service_account_key_file = var.service_account_key_file
  cloud_id                 = var.cloud_id
  folder_id                = var.folder_id
  zone                     = var.zone
}

module "kubernetes" {
  source           = "../modules/kubernetes"
  public_key_path  = var.public_key_path
  private_key_path = var.private_key_path
  subnet_id        = var.subnet_id
  cloud_id         = var.cloud_id
  folder_id        = var.folder_id
  image_id         = resource.null_resource.image_id.triggers.image_value
}
