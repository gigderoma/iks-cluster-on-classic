##############################################################################
# Sensitive Account Variables
##############################################################################

variable ibmcloud_api_key {
  description = "The IBM Cloud platform API key needed to deploy IAM enabled resources"
  type        = string
}



##############################################################################
# Cluster Variables
##############################################################################

variable private_vlan_id {
  description = "Name of the private vlan-id"
  type        = string
  default     = "2907904"
}


variable public_vlan_id  {
  description = "Name of the public vlan-id"
  type        = string
  default     = "2907904"
}


variable cluster_name {
  description = "Name of openshift cluster to be created"
  type        = string
}

variable kube_version {
  description = "Version of kubernetes to use"
  type        = string
  default     = "1.17"
}

variable public_endpoint {
  description = "Determine public service endpoint"
  type        = string
  default     = "true"
}

variable private_endpoint {
  description = "Determine private service endpoint"
  type        = string
  default     = "true"
}

variable data_center {
  description = "Datacenter"
  type        = string
  default     = "fra02"
}

variable default_pool_size {
  description = "Default pool size for cluster. Must be at least 2"
  type        = number
  default     = 2  
}

variable hardware {
  description = "Hardware type for cluster, shared or dedicated"
  type        = string
  default     = "shared"
}

variable machine_type {
  description = "hardware type for cluster"
  type        = string
  default     = "b2c.4x16"
}



##############################################################################
