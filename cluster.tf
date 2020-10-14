##############################################################################
# Local Variables for Cluster
##############################################################################

locals {
    master  = slice(var.vlans, 0, 1)[0]
    workers = length(var.vlans) > 1 ? slice(var.vlans, 1, length(var.vlans)) : []
}

##############################################################################


##############################################################################
# Create Openshift Cluster
##############################################################################

resource ibm_container_cluster openshift_cluster {

    name              = var.cluster_name
    datacenter        = local.master.zone
    machine_type      = var.machine_type
    hardware          = var.hardware
    kube_version      = var.kube_version
    public_vlan_id    = local.master.public_vlan_id
    private_vlan_id   = local.master.private_vlan_id
    default_pool_size = var.default_pool_size
    entitlement       = var.entitlement
}

#############################################################################


#############################################################################
# Create multizone attachments for openshift cluster
#############################################################################

resource ibm_container_worker_pool_zone_attachment multi_zone {
    count           = length(local.workers)
    cluster         = ibm_container_cluster.openshift_cluster.name
    worker_pool     = ibm_container_cluster.openshift_cluster.worker_pools.0.id
    zone            = local.workers[count.index].zone
    public_vlan_id  = local.workers[count.index].public_vlan_id
    private_vlan_id = local.workers[count.index].private_vlan_id
}

#############################################################################