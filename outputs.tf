output "deployment" {
  value = element(concat(kubernetes_deployment.this.*, []), 0)
}

output "secret" {
  value     = element(concat(kubernetes_secret.this.*, []), 0)
  sensitive = true
}
