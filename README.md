# IKS Cluster on Classic

A module to create a single zone Kubernetes cluster on IBM Classic infrastructure.

## Creates

- An Kubernetes IKS cluster
- two worker pool attachments in other zones

## Table of Contents
1. [Module Variables](##Module-Variables)

---
## Module Variables

Variable | Type | Description | Default
---------|------|-------------|--------
`ibmcloud_api_key` | string | The IBM Cloud platform API key needed to deploy IAM enabled resources |
`public_vlan_ids` | list | List of public vlans. The first in this list is for the master node. | `[]`
`private_vlan_ids` | list | List of private vlans. The first in this list is for the master node. | `[]`
`zones` | list | List of cluster zones. The first in this list is for the master node.  | `[]`
`cluster_name` | string | Name of openshift cluster to be created |
`kube_version` | string | Version of kubernetes to use | `1.17`
`default_pool_size` | number | Default pool size for cluster. Must be at least 2 | `2`
`hardware` | string | Hardware type for cluster, shared or dedicated | `shared`
`machine_type` | string | hardware type for cluster | `b2c.4x16`
