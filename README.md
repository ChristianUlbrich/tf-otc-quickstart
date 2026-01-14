Terraform Open Telekom Cloud Quickstart
=======================================

Intro
=====

Deutsche Telekom offers since March 2016 an IaaS Service named
Open Telekom Cloud (OTC). The service includes

* Virtual Private Cloud (VPC)
* Elastic Cloud Server (ECS)
* Elastic Load Balancer (ELB)
* Elastic Volume Service (EVS)
* Image Management Service (IMS)
* Object Storage Service (OBS)
* Dynamic Name Service (DNS)
* Relational Database Service (RDS)

and other useful things. The portfolio will rapidly developed.


Content
=======

Terraform provider for OTC: https://www.terraform.io/docs/providers/opentelekomcloud/index.html

With the Quickstart the following resources will created for you:

* VPC
* Subnet
* Security Group
* EIP
* ECS

```bash
cp terraform.tfvars.example terraform.tfvars
```

Adjust `access_key`, `secret_key` with your own OTC _credentials_.

Adjust `public_key` with your own SSH Public Key (`ssh-rsa AAAAB...`)

All other settings are defined in `variables.tf`, you can overwrite them in `terraform.tfvars`.

Init Terraform:

```bash
    terraform init
```

Plan Terraform:

```bash
    terraform plan
```

Apply Terraform:

```bash
    terraform apply
```

As _outputs_ you can see the `external_ip` to connect with `ssh_command`. _Security Groups_ are set to **allow** _inbound_ _ICMP_, _SSH_ **and** _outbound traffic_.


Destroy Terraform:

```
    terraform destroy
```

Contributing
------------

1. Fork it.
2. Create a branch (`git checkout -b my_markup`)
3. Commit your changes (`git commit -am "Added Snarkdown"`)
4. Push to the branch (`git push origin my_markup`)
5. Open a [Pull Request][1]
6. Enjoy a refreshing Diet Coke and wait

