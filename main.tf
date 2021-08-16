#####
# Locals
#####

locals {
  labels = {
    "version"    = var.image_version
    "component"  = "radar"
    "part-of"    = "runscope"
    "managed-by" = "terraform"
    "name"       = "runscope-radar"
  }
}

#####
# Randoms
#####

resource "random_string" "selector" {
  special = false
  upper   = false
  number  = false
  length  = 8
}

#####
# Deployment
#####

resource "kubernetes_deployment" "this" {
  count = var.enabled ? 1 : 0

  metadata {
    name      = var.deployment_name
    namespace = var.namespace
    annotations = merge(
      var.annotations,
      var.deployment_annotations
    )
    labels = merge(
      {
        "instance" = var.deployment_name
      },
      local.labels,
      var.labels,
      var.deployment_labels
    )
  }

  spec {
    replicas = var.replicas

    selector {
      match_labels = {
        selector = "${local.labels.name}${random_string.selector.result}"
      }
    }
    template {
      metadata {
        annotations = merge(
          var.annotations,
          var.deployment_template_annotations
        )
        labels = merge(
          {
            "instance" = var.deployment_name
            selector   = "${local.labels.name}${random_string.selector.result}"
          },
          local.labels,
          var.labels,
          var.deployment_template_labels
        )
      }
      spec {
        container {
          name              = "runscope-radar"
          image             = "${var.image_name}:${var.image_version}"
          image_pull_policy = var.image_pull_policy

          command = ["sh", "-c", "/usr/local/bin/runscope-radar --team-id=${var.team_id} --name=${var.name} --token=$${RUNSCOPE_TOKEN}"]
          args    = var.additionnal_args

          env {
            name = "RUNSCOPE_TOKEN"
            value_from {
              secret_key_ref {
                name = element(concat(kubernetes_secret.this.*.metadata.0.name, [""]), 0)
                key  = "token"
              }
            }
          }

          resources {
            requests = {
              memory = "512Mi"
              cpu    = "100m"
            }
            limits = {
              memory = "2048Mi"
              cpu    = "1000m"
            }
          }
        }
      }
    }
  }
}

#####
# Secret
#####

resource "kubernetes_secret" "this" {
  count = var.enabled ? 1 : 0

  metadata {
    name      = var.secret_name
    namespace = var.namespace
    annotations = merge(
      var.annotations,
      var.secret_annotations
    )
    labels = merge(
      {
        "instance" = var.secret_name
      },
      local.labels,
      var.labels,
      var.secret_labels
    )
  }

  data = {
    token = var.token
  }

  type = "Opaque"
}
