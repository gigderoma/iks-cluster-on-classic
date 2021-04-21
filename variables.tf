##############################################################################
# Sensitive Account Variables
##############################################################################

variable ibmcloud_api_key {
  description = "The IBM Cloud platform API key needed to deploy IAM enabled resources"
  type        = string
}

##############################################################################


##############################################################################
# Network Variables
##############################################################################

variable vlans {
  description = "List containing a map of public and private VLANs for the cluster. The first in this list will always be for the master. Each pair of VLANs must be in the same zone"
  type        = list(
    object(
      {
        private_vlan_id = string
        public_vlan_id  = string
        zone            = string
      }
    )
  )
  default = [
    {
      private_vlan_id = "2907904"
      public_vlan_id  = "2907902"
      zone            = "fra02"
    }
  ]
}

##############################################################################


##############################################################################
# Cluster Variables
##############################################################################

variable cluster_name {
  description = "Name of openshift cluster to be created"
  type        = string
}

variable kube_version {
  description = "Version of kubernetes to use"
  type        = string
  default     = "1.17"
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
