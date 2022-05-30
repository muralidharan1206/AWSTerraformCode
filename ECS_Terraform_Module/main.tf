module "ECS_Cluster" {
  source = "./modules/ECS_Cluster"
}

module "ECS_Service" {
  source = "./modules/Service"
}

module "ECS_TaskDefenition" {
  source = "./modules/Task_Defenition"
}

