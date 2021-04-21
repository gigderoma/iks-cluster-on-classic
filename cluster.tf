

##############################################################################


##############################################################################
# Create Kubernetes Cluster
##############################################################################

resource ibm_container_cluster kubernetes_cluster {

    name              = var.cluster_name
    datacenter        = var.data_center
    machine_type      = var.machine_type
    hardware          = var.hardware
    kube_version      = var.kube_version
    public_vlan_id    = var.public_vlan_id
    private_vlan_id   = var.private_vlan_id
    default_pool_size = var.default_pool_size
    public_service_endpoint  = var.public_endpoint
    private_service_endpoint = var.private_endpoint
}

#############################################################################



