# terraform-module-kubernetes-runscope-radar

Terraform module to deploy runscope-radar on kubernetes.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.12 |
| kubernetes | >= 1.10.0 |
| random | >= 2.0.0 |

## Providers

| Name | Version |
|------|---------|
| kubernetes | >= 1.10.0 |
| random | >= 2.0.0 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| additionnal\_args | List of additionnal arguments to pass to runscope-radar. | `list(string)` | `[]` | no |
| annotations | Additionnal annotations that will be merged on all resources. | `map` | `{}` | no |
| deployment\_annotations | Additionnal annotations that will be merged on the deployment. | `map` | `{}` | no |
| deployment\_labels | Additionnal labels that will be merged on the deployment. | `map` | `{}` | no |
| deployment\_name | Name of the deployment that will be create. | `string` | `"runscope-radar"` | no |
| deployment\_template\_annotations | Additionnal annotations that will be merged on the deployment template. | `map` | `{}` | no |
| deployment\_template\_labels | Additionnal labels that will be merged on the deployment template. | `map` | `{}` | no |
| enabled | Whether or not to enable this module. | `bool` | `true` | no |
| image\_name | Name of the docker image to use. | `string` | `"fxinnovation/runscope-radar"` | no |
| image\_pull\_policy | Image pull policy on the main container. | `string` | `"IfNotPresent"` | no |
| image\_version | Tag of the docker image to use. | `string` | `"0.1.0"` | no |
| labels | Additionnal labels that will be merged on all resources. | `map` | `{}` | no |
| name | Name of the runscope-radar. | `string` | n/a | yes |
| namespace | Namespace in which the module will be deployed. | `string` | `"default"` | no |
| replicas | Number of replicas to deploy. | `number` | `1` | no |
| secret\_annotations | Additionnal annotations that will be merged for the secret. | `map` | `{}` | no |
| secret\_labels | Additionnal labels that will be merged for the secret. | `map` | `{}` | no |
| secret\_name | Name of the secret that will be created. | `string` | `"runscope-radar"` | no |
| team\_id | ID of the team this runscope-radar belongs to. | `string` | n/a | yes |
| token | Token to use to connect to runscope. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| deployment | n/a |
| secret | n/a |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Versioning
This repository follows [Semantic Versioning 2.0.0](https://semver.org/)

## Git Hooks
This repository uses [pre-commit](https://pre-commit.com/) hooks.
