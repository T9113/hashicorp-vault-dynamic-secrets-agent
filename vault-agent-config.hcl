pid_file = "/home/vault/pid"
vault {
  address = "https://vault.internal:8200"
}
auto_auth {
  method "kubernetes" {
    mount_path = "auth/kubernetes"
    config = { role = "app-role" }
  }
  sink "file" {
    config = { path = "/home/vault/.vault-token" }
  }
}
