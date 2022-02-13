terraform {
  required_providers {
    yandex = {
      source  = "yandex-cloud/yandex"
      version = "0.71.0"
    }
  }

  backend "s3" {
    endpoint   = "storage.yandexcloud.net"
    region     = "us-east-1"
    key        = "yandex/terraform.tfstate"

    skip_region_validation      = true
    skip_credentials_validation = true
  }
}

variable "cloud_id" {
  type = string
}

variable "folder_id" {
  type = string
}

provider "yandex" {
  cloud_id                 = var.cloud_id
  folder_id                = var.folder_id
  zone                     = "ru-central1-a"
}

locals {
  lemp_zone = "ru-central1-a"
  lamp_zone = "ru-central1-b"
}

module "instance_lemp" {
  source          = "./modules/module_instance"
  family_name     = "lemp"
  instance_region = local.lemp_zone
  subn_id         = module.subnet_lemp.subnet_id
}


module "instance_lamp" {
  source          = "./modules/module_instance"
  family_name     = "lamp"
  instance_region = local.lamp_zone
  subn_id         = module.subnet_lamp.subnet_id
}

resource "yandex_vpc_network" "foo" {
  name = "network1"
}

module "subnet_lemp" {
  source          = "./modules/module_network"
  vpc_subnet_name = "lemp_subnet"
  vpc_subnet_zone = local.lemp_zone
  net_id          = yandex_vpc_network.foo.id
  vpc_cidr        = ["10.2.0.0/16"]
}

module "subnet_lamp" {
  source          = "./modules/module_network"
  vpc_subnet_name = "lamp_subnet"
  vpc_subnet_zone = local.lamp_zone
  net_id          = yandex_vpc_network.foo.id
  vpc_cidr        = ["10.3.0.0/16"]
}
