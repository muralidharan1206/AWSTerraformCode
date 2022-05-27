variable "region" {
    default = "us-east-2"
}

variable "access_key" {
    default = "AKIARRSXKNBI45O3FIRS"
}

variable "secret_key" {
    default = "Q98eIJD1hpjzJDiTBMSs1pds4DhUpw/EdGOr1QaG"
}

variable "main_vpc_cidr" {
    default = "10.0.0.0/16"
}

variable "public_subnets" {
    default = "10.0.1.0/24"
}

variable "private_subnets" {
    default = "10.0.2.0/24"
}

variable "eks_cluster" {
   default = "ekscluster"
}

variable "iamrole_name_cluster" {
   default = "eks-cluster"
}

variable "iamrole_name_node" {
   default = "eks-node"
}

variable "node_group_name" {
   default = "node"
}
 
