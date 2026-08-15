rgs = {

  rg1 = {

    name     = "lakshay_rg1_dev"
    location = "eastus"

  }

  rg2 = {

    name     = "lakshay_rg2_dev"
    location = "eastus"

  }

}

vnets = {

  vnet1 = {

    name                = "lakshay_vnet1_dev"
    location            = "eastus"
    resource_group_name = "lakshay_rg1_dev"
    address_space       = ["10.7.0.0/16"]

  }

  vnet2 = {

    name                = "lakshay_vnet2_dev"
    location            = "eastus"
    resource_group_name = "lakshay_rg2_dev"
    address_space       = ["10.9.0.0/16"]

  }

}

subnets = {

  subnet1 = {

    name                 = "subnet1_dev"
    resource_group_name  = "lakshay_rg1_dev"
    virtual_network_name = "lakshay_vnet1_dev"
    address_prefixes     = ["10.7.1.0/24"]


  }

  subnet2 = {

    name                 = "subnet2_dev"
    resource_group_name  = "lakshay_rg2_dev"
    virtual_network_name = "lakshay_vnet2_dev"
    address_prefixes     = ["10.9.1.0/24"]

  }


}

pips = {

  pip1 = {

    name                = "mypiplaks1"
    resource_group_name = "lakshay_rg1_dev"
    location            = "eastus"
    allocation_method   = "Static"


  }

}


nics = {

  nic1 = {

    nic_name             = "mylakNIC1"
    location             = "eastus"
    rg_name              = "lakshay_rg1_dev"
    subnet_name          = "subnet1_dev"
    virtual_network_name = "lakshay_vnet1_dev"
    pip_name             = "mypiplaks1"


  }

}
