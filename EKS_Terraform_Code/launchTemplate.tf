resource "aws_launch_template" "eks_node" {
  name_prefix   = "EKS-node"
  image_id      = "ami-0022f774911c1d690"
  instance_type = "t2.micro"

  network_interfaces {
    #checkov:skip=CKV_AWS_88:Default does not allocate public IP
    associate_public_ip_address = "false"
    security_groups             = ["${aws_security_group.ssh_allowed.id}"]
  }
  
  tag_specifications {
    resource_type = "instance"
    tags = {
      Name = "eks_node"
    }
  }
}

