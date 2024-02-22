module "minikube" {
  source = "scholzj/minikube/aws"

  aws_region          = "us-east-1"
  cluster_name        = "roboshop"
  aws_instance_type   = "t2.medium"
  ssh_public_key      = "~/.ssh/daws76.pub"
  aws_subnet_id       = "subnet-0d8aaf2b5a4eefc6e"
  hosted_zone         = "ramakrishna.cloud"
  hosted_zone_private = false
  #ami_image_id        = ""

  tags = {
    Application = "Minikube"
  }
  
  addons = [
    "https://raw.githubusercontent.com/scholzj/terraform-aws-minikube/master/addons/storage-class.yaml",
    "https://raw.githubusercontent.com/scholzj/terraform-aws-minikube/master/addons/csi-driver.yaml",
    "https://raw.githubusercontent.com/scholzj/terraform-aws-minikube/master/addons/metrics-server.yaml",
    "https://raw.githubusercontent.com/scholzj/terraform-aws-minikube/master/addons/dashboard.yaml",
    "https://raw.githubusercontent.com/scholzj/terraform-aws-minikube/master/addons/external-dns.yaml",
  ]
}
