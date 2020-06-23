#####
# Global
#####

variable "annotations" {
  description = "Additionnal annotations that will be merged on all resources."
  default     = {}
}

variable "enabled" {
  description = "Whether or not to enable this module."
  default     = true
}

variable "labels" {
  description = "Additionnal labels that will be merged on all resources."
  default     = {}
}

variable "namespace" {
  description = "Namespace in which the module will be deployed."
  default     = "default"
}

#####
# Application
#####

variable "agent_id" {
  description = "ID of the runscope-radar."
  type        = string
}

variable "team_id" {
  description = "ID of the team this runscope-radar belongs to."
  type        = string
}

variable "name" {
  description = "Name of the runscope-radar."
  type        = string
}

variable "token" {
  description = "Token to use to connect to runscope."
  type        = string
}

variable "additionnal_args" {
  description = "List of additionnal arguments to pass to runscope-radar."
  type        = list(string)
  default     = []
}

#####
# Deployment
#####

variable "deployment_annotations" {
  description = "Additionnal annotations that will be merged on the deployment."
  default     = {}
}

variable "deployment_labels" {
  description = "Additionnal labels that will be merged on the deployment."
  default     = {}
}

variable "deployment_name" {
  description = "Name of the deployment that will be create."
  default     = "oracledb-exporter"
}

variable "deployment_template_annotations" {
  description = "Additionnal annotations that will be merged on the deployment template."
  default     = {}
}

variable "deployment_template_labels" {
  description = "Additionnal labels that will be merged on the deployment template."
  default     = {}
}

variable "image_name" {
  description = "Name of the docker image to use."
  default     = "fxinnovation/runscope-radar"
}

variable "image_pull_policy" {
  description = "Image pull policy on the main container."
  default     = "IfNotPresent"
}

variable "image_version" {
  description = "Tag of the docker image to use."
  default     = "0.1.0"
}

variable "replicas" {
  description = "Number of replicas to deploy."
  default     = 1
}

#####
# Secret
#####

variable "secret_annotations" {
  description = "Additionnal annotations that will be merged for the secret."
  default     = {}
}

variable "secret_labels" {
  description = "Additionnal labels that will be merged for the secret."
  default     = {}
}

variable "secret_name" {
  description = "Name of the secret that will be created."
  default     = "oracledb-exporter"
}
