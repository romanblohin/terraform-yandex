terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
      version = "0.71.0"
    }
  }
}

data "yandex_compute_image" "image" {
  family = var.family_name
}

resource "yandex_compute_instance" "default" {
  name        = "server-${data.yandex_compute_image.image.family}"
  platform_id = "standard-v1"
  zone        = var.instance_region

  resources {
    cores  = 2
    memory = 2
  }

  boot_disk {
    initialize_params {
      image_id = data.yandex_compute_image.image.id
    }
  }

  network_interface {
    subnet_id = var.subn_id
    nat       = true
  }

  metadata = {
    foo      = "bar"
    ssh-keys = "ubuntu:${file("~/.ssh/id_rsa.pub")}"
  }
}
