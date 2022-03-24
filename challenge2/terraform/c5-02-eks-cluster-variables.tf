variable "cluster_version" {
    description = "EKS cluster verion"
    type = string
    default = "1.20"
}

variable "worker_node_name" {
    description = "Name of worker node group"
    type = list
    default = ["worker-node-group-1", "worker-node-group-2"]
}


variable "worker_node_instance_type" {
    description = "Various instances type selection for worker nodes"
    type = list
    default = ["t2.micro", "t2.small", "t3a.large"]
}


