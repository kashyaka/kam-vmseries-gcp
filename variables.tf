variable "project_id" {
  description = "GCP project ID"
  default     = null
}

variable "prefix" {
  description = "Arbitrary string used to prefix resource names."
  type        = string
  default     = null
}

variable "region" {
  description = "Google Cloud region for the created resources."
  type        = string
  default     = null
}

variable "public_key_path" {
  description = "Local path to public SSH key.  If you do not have a public key, run >> ssh-keygen -f ~/.ssh/demo-key -t rsa -C admin"
  type        = string
  default     = null
}

variable "vmseries_image_name" {
  description = "The image name from which to boot an instance, including the license type and the version, e.g. vmseries-byol-814, vmseries-bundle1-814, vmseries-flex-bundle2-1001. Default is vmseries-flex-bundle1-913."
  type        = string
  default     = "vmseries-flex-bundle2-1017"
}
variable "machine_type" {
  description = "Firewall instance machine type, which depends on the license used. See the [Terraform manual](https://www.terraform.io/docs/providers/google/r/compute_instance.html)"
  default     = "n2-standard-4"
  type        = string
}
variable "mgmt_allow_ips" {
  description = "A list of IP addresses to be added to the management network's ingress firewall rule. The IP addresses will be able to access to the VM-Series management interface."
  type        = list(string)
  default     = null
}

variable "cidr_mgmt" {
  description = "The CIDR range of the management subnetwork."
  type        = string
  default     = null
}

variable "cidr_untrust" {
  description = "The CIDR range of the untrust subnetwork."
  type        = string
  default     = null
}

variable "cidr_trust" {
  description = "The CIDR range of the trust subnetwork."
  type        = string
  default     = null
}

variable "extranet_cidr_trust" {
  description = "The CIDR range of the trust subnetwork."
  type        = string
  default     = null
}

variable "cidr_ha2" {
  description = "The CIDR range of the ha2 subnetwork."
  type        = string
  default     = null
}

variable "create_workload_vm" {
  description = "Set to true to create a workload VM for testing purposes."
  default     = true
}