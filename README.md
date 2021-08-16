# terraform-module-kubernetes-runscope-radar

Terraform module to deploy runscope-radar on kubernetes.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.14 |
| <a name="requirement_kubernetes"></a> [kubernetes](#requirement\_kubernetes) | >= 2.0.0 |
| <a name="requirement_random"></a> [random](#requirement\_random) | >= 2.0.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_kubernetes"></a> [kubernetes](#provider\_kubernetes) | >= 2.0.0 |
| <a name="provider_random"></a> [random](#provider\_random) | >= 2.0.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [kubernetes_deployment.this](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/deployment) | resource |
| [kubernetes_secret.this](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/secret) | resource |
| [random_string.selector](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/string) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_additionnal_args"></a> [additionnal\_args](#input\_additionnal\_args) | List of additionnal arguments to pass to runscope-radar. | `list(string)` | `[]` | no |
| <a name="input_annotations"></a> [annotations](#input\_annotations) | Additionnal annotations that will be merged on all resources. | `map` | `{}` | no |
| <a name="input_deployment_annotations"></a> [deployment\_annotations](#input\_deployment\_annotations) | Additionnal annotations that will be merged on the deployment. | `map` | `{}` | no |
| <a name="input_deployment_labels"></a> [deployment\_labels](#input\_deployment\_labels) | Additionnal labels that will be merged on the deployment. | `map` | `{}` | no |
| <a name="input_deployment_name"></a> [deployment\_name](#input\_deployment\_name) | Name of the deployment that will be create. | `string` | `"runscope-radar"` | no |
| <a name="input_deployment_template_annotations"></a> [deployment\_template\_annotations](#input\_deployment\_template\_annotations) | Additionnal annotations that will be merged on the deployment template. | `map` | `{}` | no |
| <a name="input_deployment_template_labels"></a> [deployment\_template\_labels](#input\_deployment\_template\_labels) | Additionnal labels that will be merged on the deployment template. | `map` | `{}` | no |
| <a name="input_enabled"></a> [enabled](#input\_enabled) | Whether or not to enable this module. | `bool` | `true` | no |
| <a name="input_image_name"></a> [image\_name](#input\_image\_name) | Name of the docker image to use. | `string` | `"fxinnovation/runscope-radar"` | no |
| <a name="input_image_pull_policy"></a> [image\_pull\_policy](#input\_image\_pull\_policy) | Image pull policy on the main container. | `string` | `"IfNotPresent"` | no |
| <a name="input_image_version"></a> [image\_version](#input\_image\_version) | Tag of the docker image to use. | `string` | `"0.1.0"` | no |
| <a name="input_labels"></a> [labels](#input\_labels) | Additionnal labels that will be merged on all resources. | `map` | `{}` | no |
| <a name="input_name"></a> [name](#input\_name) | Name of the runscope-radar. | `string` | n/a | yes |
| <a name="input_namespace"></a> [namespace](#input\_namespace) | Namespace in which the module will be deployed. | `string` | `"default"` | no |
| <a name="input_replicas"></a> [replicas](#input\_replicas) | Number of replicas to deploy. | `number` | `1` | no |
| <a name="input_secret_annotations"></a> [secret\_annotations](#input\_secret\_annotations) | Additionnal annotations that will be merged for the secret. | `map` | `{}` | no |
| <a name="input_secret_labels"></a> [secret\_labels](#input\_secret\_labels) | Additionnal labels that will be merged for the secret. | `map` | `{}` | no |
| <a name="input_secret_name"></a> [secret\_name](#input\_secret\_name) | Name of the secret that will be created. | `string` | `"runscope-radar"` | no |
| <a name="input_team_id"></a> [team\_id](#input\_team\_id) | ID of the team this runscope-radar belongs to. | `string` | n/a | yes |
| <a name="input_token"></a> [token](#input\_token) | Token to use to connect to runscope. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_deployment"></a> [deployment](#output\_deployment) | n/a |
| <a name="output_secret"></a> [secret](#output\_secret) | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Versioning
This repository follows [Semantic Versioning 2.0.0](https://semver.org/)

## Git Hooks
This repository uses [pre-commit](https://pre-commit.com/) hooks.
