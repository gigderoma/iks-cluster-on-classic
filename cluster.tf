

##############################################################################


##############################################################################
# Create Kubernetes Cluster
##############################################################################

resource ibm_container_cluster kubernetes_cluster {

    name              = var.cluster_name
    datacenter        = local.master.zone
    machine_type      = var.machine_type
    hardware          = var.hardware
    kube_version      = var.kube_version
    public_vlan_id    = local.master.public_vlan_id
    private_vlan_id   = local.master.private_vlan_id
    default_pool_size = var.default_pool_size
    public_service_endpoint  = "true"
    private_service_endpoint = "true"
}

#############################################################################



