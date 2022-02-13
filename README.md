## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_yandex"></a> [yandex](#requirement\_yandex) | 0.71.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_yandex"></a> [yandex](#provider\_yandex) | 0.71.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_instance_lamp"></a> [instance\_lamp](#module\_instance\_lamp) | ./modules/module_instance | n/a |
| <a name="module_instance_lemp"></a> [instance\_lemp](#module\_instance\_lemp) | ./modules/module_instance | n/a |
| <a name="module_subnet_lamp"></a> [subnet\_lamp](#module\_subnet\_lamp) | ./modules/module_network | n/a |
| <a name="module_subnet_lemp"></a> [subnet\_lemp](#module\_subnet\_lemp) | ./modules/module_network | n/a |

## Resources

| Name | Type |
|------|------|
| [yandex_vpc_network.foo](https://registry.terraform.io/providers/yandex-cloud/yandex/0.71.0/docs/resources/vpc_network) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cloud_id"></a> [cloud\_id](#input\_cloud\_id) | n/a | `string` | n/a | yes |
| <a name="input_folder_id"></a> [folder\_id](#input\_folder\_id) | n/a | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_lamp_public_ip"></a> [lamp\_public\_ip](#output\_lamp\_public\_ip) | n/a |
| <a name="output_lemp_public_ip"></a> [lemp\_public\_ip](#output\_lemp\_public\_ip) | n/a |
