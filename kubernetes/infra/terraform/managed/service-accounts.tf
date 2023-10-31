# Service accounts

resource "yandex_iam_service_account" "this" {
  name = "this"
}

resource "yandex_resourcemanager_folder_iam_binding" "editor" {
  folder_id = var.folder_id
  role = "editor"
  members = [
    "serviceAccount:${yandex_iam_service_account.this.id}"
  ]
  depends_on = [
    yandex_iam_service_account.this,
  ]
}

resource "yandex_iam_service_account_static_access_key" "static-key" {
  service_account_id = yandex_iam_service_account.this.id
  description        = "Static access key for object storage"
}
