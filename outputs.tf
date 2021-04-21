#############################################################################
# Cluster outputs
#############################################################################

output cluster_id {
    description = "Cluster ID, will await multizone attachment before returning"
    value       = ibm_container_cluster.openshift_cluster.id
}

#############################################################################
