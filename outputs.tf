output "deployment" {
  value = element(concat(kubernetes_deployment.this.*, list({})), 0)
}

output "secret" {
  value     = element(concat(kubernetes_secret.this.*, list({})), 0)
  sensitive = true
}
